<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class album extends CP_Controller {
	function __construct() {
        parent::__construct('_album', 'album_', 'id');
        $this->assigns->cname = 'Album';
    }
    private function setAction($unit){
    	$this->assigns->unit = $unit;
        $arr = str_split($unit);
        $action['add'] = (bool)$arr[0];
        $action['edit'] = (bool)$arr[1];
        $action['delete'] = (bool)$arr[2];
        $action['ispopup'] = (bool)$arr[3];
        $action['layout'] = $arr[4];
        $action['col'] = max((int)$arr[5],3);
        $this->assigns->action = $action;
    }
    function index(){

    }
    function viewport($unit='00000',$type=''){
        $this->setAction($unit);
        $this->assigns->type = $type;
        // if($type=='cake')
        //     $this->assigns->cname = 'Cake';
        // if($type=='album')
        //     $this->assigns->cname = 'Album';
        $this->smarty->view( 'dashboard/cp/album/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $this->assigns->type=$type;
        $unit=$this->input->post('unit');
        $this->setAction($unit);
        $cates = $this->cate_model->onGetByType($type);
        if($cates){
            $cates=$this->cate_model->buildTreeArray($cates);
            $this->assigns->cates=$cates;
        }
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->Core_Model->onGet($Id);
        }
        switch ($layout){
            case '1':
                $htmlreponse = $this->smarty->view( 'dashboard/cp/album/editPanel', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/cp/album/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function databinding($type=''){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}title,
                    {$this->table}.{$this->prefix}thumb,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}category,
                    cat_title,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"
                FROM `{$this->table}` LEFT JOIN _category ON (cat_id = album_category)
            ",
            "where"     =>"WHERE `{$this->prefix}type` = '$type'",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/cp/album/'.$src, $this->assigns );

    }
    function beforecommit(){
        $Id = $this->input->post('Id');
        $Params = $this->input->post('Params');
        if(!empty($Params['album_alias'])){
            $alias = $Params['album_alias'];
            if($Id) $this->db->where('album_id <>',$Id);
            $item = $this->Core_Model->onGetByAlias($alias);
            if($item){
                $output["result"] = -1;
                $output["message"] = ("Alias exists, please use another alias.");
                echo json_encode($output);
                die;
            }
        }
        
    }
}
