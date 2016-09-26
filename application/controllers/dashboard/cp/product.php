<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class product extends CP_Controller {
	function __construct() {
        parent::__construct('_product', 'product_', 'id');
        $this->load->model('dashboard/cp/product_model');
        $this->assigns->cname = 'Product';
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
    function imageCheck($img=''){
        $img=$this->input->post('img');
        $id=$this->input->post('id');
        //$img = '/data/image/banh-sinh-nhat-dep-nhat-15.jpg';
        if(!empty($id)){
            $this->db->where('product_id <>',$id);
        }
        $product = $this->product_model->onGetByThumb($img);
        if($product){
            $output["product"] = $product;    
            $output["result"] = -1;
            $output["message"] = '<div>Hình ảnh này đã được sử dụng.</div>';
            $output["message"] .= '<div>'.$product->product_title.'</div>';
            $output["message"] .= '<img width="80" src="'.$product->product_thumb.'"/>';
        }else{
            $output["result"] = 1;
            $output["message"]='Hình ảnh này chưa được sử dụng !';
        }
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function viewport($unit='00000',$type=''){
        $this->setAction($unit);
        $this->assigns->type = $type;
        if($type=='cake')
            $this->assigns->cname = 'Cake';
        if($type=='album')
            $this->assigns->cname = 'Album';
        $this->smarty->view( 'dashboard/cp/product/viewport', $this->assigns );
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
                $htmlreponse = $this->smarty->view( 'dashboard/cp/product/editPanel', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/cp/product/editPanel', $this->assigns, true );
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
                    {$this->table}.{$this->prefix}code,
                    {$this->table}.{$this->prefix}price,
                    {$this->table}.{$this->prefix}thumb,
                    {$this->table}.{$this->prefix}category,
                    cat_title,
                    {$this->table}.{$this->prefix}view,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status
                ",
            "from"      =>"
                FROM `{$this->table}` LEFT JOIN _category ON (cat_id = product_category)
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
        $this->smarty->view( 'dashboard/cp/product/'.$src, $this->assigns );

    }
    function beforecommit(){
        $Id = $this->input->post('Id');
        $Params = $this->input->post('Params');
        if(!empty($Params['product_alias'])){
            $alias = $Params['product_alias'];
            if($Id) $this->db->where('product_id <>',$Id);
            $item = $this->product_model->onGetByAlias($alias);
            if($item){
                $output["result"] = -1;
                $output["message"] = ("Alias exists, please use another alias.");
                echo json_encode($output);
                die;
            }
        }
        if(!empty($Params['product_code'])){
            $code = $Params['product_code'];
            if($Id) $this->db->where('product_id <>',$Id);
            $item = $this->product_model->onGetByCode($code);
            if($item){
                $output["result"] = -1;
                $output["message"] = ("CODE '<b>$code</b>' exists, please use another CODE.");
                echo json_encode($output);
                die;
            }
        }
    }
    function getCake($start=0){
        $aData = $this->product_model->onGets();
        foreach ($aData as $oRow) {
            $nView = rand(7,14);
            $this->db
                ->where('product_id',$oRow->product_id)
                ->update('_product',array('product_view'=>$oRow->product_view+$nView));
            $this->db->insert('_chart',array(
                'chart_count'=>$nView,
                'chart_table'=>'_product',
                'chart_insert'=>date('Y-m-d H:i:s'),
                'chart_row'=>$oRow->product_id,
                'chart_type'=>'View'
            ));
        }
        return;
        require(APPPATH . 'libraries/simple_html_dom.php');
        $perpage = 15;
        $html = file_get_html("http://banhngononline.com/index.php?start=$start");
        $ret = $html->find('.component_content>.productitem_out');
        $id = $start+1;
        foreach ($ret as $r) {
            $cake['product_thumb'] = $r->find('.product_img a img',0)->src;
            $cake['product_title'] = $r->find('.product_img a img',0)->title;
            $cake['product_alias'] = convertUrl($r->find('.product_img a img',0)->title);
            $cake['product_type'] = 'cake';
            $cake['product_status'] = 'true';
            $cake['product_position'] = 0;
            $cake['product_category'] = '419';
            $cake['product_code'] = 'CAKE'.$id;
            $cake['product_price'] = str_replace(array('Giá: ','.',' VND'),array('','',''),$r->find('.product_price',0)->innertext);
            $item = $this->product_model->onGetByAlias($cake['product_alias']);
            if(!$item){
                $rs = $this->product_model->onInsert($cake);
                $id++;
            }
        }
        echo '<a href="/dashboard/cp/product/getCake/'.($start+15).'">Next</a>';
    }
}
