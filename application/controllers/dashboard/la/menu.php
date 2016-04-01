<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class menu extends CP_Controller {
	function __construct() {
        parent::__construct('lang_menu', 'menu_', 'id');
        $this->assigns->cname = 'Menu';
        $this->load->model('dashboard/la/lang_model');
        $this->load->model('dashboard/la/menu_model');
        $this->assigns->aLang = $this->lang_model->getLanguage();
    }
    function index(){

    }
    private function setAction($unit){
        $this->assigns->unit = $unit;
        $arr = str_split($unit);
        $action['add'] = (bool)$arr[0];
        $action['edit'] = (bool)$arr[1];
        $action['delete'] = (bool)$arr[2];
        $action['ispopup'] = (int)$arr[3];
        $action['layout'] = $arr[4];
        $action['col'] = max((int)$arr[5],3);
        $this->assigns->action = $action;
    }
    function viewport($unit='00000',$type=''){
    	$this->setAction($unit);
        $this->assigns->type = $type;
        $this->smarty->view( 'dashboard/la/menu/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $unit=$this->input->post('unit');
        $this->setAction($unit);

        $aMenu = $this->menu_model->getMenuByType($type);
        if($aMenu){
            $aMenu = $this->menu_model->buildTreeArray($aMenu);
            $this->assigns->aMenu=$aMenu;
        }
        $this->assigns->type=$type;
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->menu_model->getMenuById($Id);
        }
        switch ($layout){
            case '1':
                $htmlreponse = $this->smarty->view( 'dashboard/la/menu/editPanelList', $this->assigns, true );
                break;
            case 'm':
            case '3':
                $htmlreponse = $this->smarty->view( 'dashboard/la/menu/editPanelMenu', $this->assigns, true );
                break;
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/la/menu/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function oninsert() {
        $this->beforeinsert();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $Params = $this->input->get_post('Params');
        if (!empty($Params)) {
            $sToken = md5(time().strtoupper(random_string('alnum', 8)));
            $sType = $Params['menu_type'];
            $sDate = date('Y-m-d H:i:s');
            $Params['menu_token'] = $sToken;
            foreach ($Params['ti_title'] as $sLang => $sTitle) {
                $aTitleData[] = array(
                    'ti_title' => $Params['ti_title'][$sLang],
                    'ti_lang' => $sLang,
                    'ti_token' => $sToken,
                    'ti_type' => $sType,
                    'ti_insert' => $sDate
                );
                $aAliasData[] = array(
                    'als_alias' => $Params['als_alias'][$sLang],
                    'als_lang' => $sLang,
                    'als_token' => $sToken,
                    'als_type' => $sType,
                    'als_insert' => $sDate
                );
                $aDescData[] = array(
                    'de_desc' => $Params['de_desc'][$sLang],
                    'de_lang' => $sLang,
                    'de_token' => $sToken,
                    'de_type' => $sType,
                    'de_insert' => $sDate
                );
            }
            unset($Params['ti_title']);
            unset($Params['als_alias']);
            unset($Params['de_desc']);
            $this->db->trans_begin();
            $rRs = $this->Core_Model->onInsert($Params);
            $rRs = $rRs && $this->db->insert_batch('lang_title', $aTitleData); 
            $rRs = $rRs && $this->db->insert_batch('lang_alias', $aAliasData); 
            $rRs = $rRs && $this->db->insert_batch('lang_desc', $aDescData); 
            if ($rRs === true) {
                $output["result"] = 1;
                $output["message"] = ("Record successfully inserted .");
                $this->db->trans_commit();
            } else {
                $output["result"] = -1;
                $output["message"] = ("Record faily to insert. Please check data input and try again.<br/>");
                $this->db->trans_rollback();
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function onupdate() {
        $this->beforeupdate();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $aParams = $this->input->get_post('Params');
        if (!empty($aParams)) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $oRecord = $this->menu_model->getMenuById($Id);
                if ($oRecord) {
                    $rRs = true;
                    $this->db->trans_begin();
                    $sToken = $oRecord->menu_token;
                    $sDate = date('Y-m-d H:i:s');
                    $sType = $oRecord->menu_type;
                    $aParams['menu_token'] = $sToken;
                    foreach ($aParams['ti_title'] as $sLang => $sTitle) {
                        if($oRecord->aTitle[$sLang]!=$aParams['ti_title'][$sLang]){
                            $aTitleParams = array(
                                'ti_title'  => $aParams['ti_title'][$sLang],
                                'ti_token'  => $sToken,
                                'ti_lang'   => $sLang,
                                'ti_type'   => $sType
                            );
                            $aTitleColumnUpdate = array('ti_title');
                            $rRs = $rRs && $this->db->on_duplicate_update('lang_title',$aTitleColumnUpdate,$aTitleParams);
                        }
                        if($oRecord->aAlias[$sLang]!=$aParams['als_alias'][$sLang]){
                            $aAliasParams = array(
                                'als_alias'  => $aParams['als_alias'][$sLang],
                                'als_token'  => $sToken,
                                'als_lang'   => $sLang,
                                'als_type'   => $sType
                            );
                            $aAliasColumnUpdate = array('als_alias');
                            $rRs = $rRs && $this->db->on_duplicate_update('lang_alias',$aAliasColumnUpdate,$aAliasParams);
                        }
                        if($oRecord->aDesc[$sLang]!=$aParams['de_desc'][$sLang]){
                            $aDescParams = array(
                                'de_desc'   => $aParams['de_desc'][$sLang],
                                'de_token'  => $sToken,
                                'de_lang'   => $sLang,
                                'de_type'   => $sType
                            );
                            $aDescColumnUpdate = array('de_desc');
                            $rRs = $rRs && $this->db->on_duplicate_update('lang_desc',$aDescColumnUpdate,$aDescParams);
                        }
                        if($rRs===false) break;

                    }
                    unset($aParams['ti_title']);
                    unset($aParams['als_alias']);
                    unset($aParams['de_desc']);
                    $rRs = $rRs && $this->Core_Model->onUpdate($oRecord->menu_id,$aParams);

                    if ($rRs === true) {
                        $output["result"] = 1;
                        $output["message"] = ("Record successfully updated.");
                        $this->db->trans_commit();
                    } else {
                        $output["result"] = -1;
                        $output["message"] = ("Record faily to update. Please check data input and try again.<br/>");
                        $this->db->trans_rollback();
                    }
                }else {
                    $output["result"] = -203;
                    $output["message"] = "Record doesn't exist.";
                }
            }
            
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function ondelete(){
        $this->beforedelete();
        $output["result"] = -1;
        $output["message"] = ("This function to requires an administrative account.<br/>Please check your authority, and try again.");
        if ($this->privilege()) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $oRecord = $this->Core_Model->onGet($Id);
                if ($oRecord) {
                    if (
                            (
                            isset($oRecord->{$this->prefix . "lock"}) &&
                            $oRecord->{$this->prefix . "lock"} == 'true'
                            ) ||
                            (
                            isset($oRecord->{$this->prefix . "Lock"}) &&
                            $oRecord->{$this->prefix . "Lock"} == 'true'
                            )
                    ) {
                        $output["message"] = ("Can't delete 'System' record. Record have been locked.");
                    } else {
                        $rRs = true;
                        $this->db->trans_begin();
                        $rRs = $this->Core_Model->onDelete($Id);
                        $sToken = $oRecord->menu_token;
                        $rRs = $rRs && $this->db
                            ->where('ti_token',$sToken)
                            ->delete('lang_title');
                        $rRs = $rRs && $this->db
                            ->where('als_token',$sToken)
                            ->delete('lang_alias');
                        $rRs = $rRs && $this->db
                            ->where('de_token',$sToken)
                            ->delete('lang_desc');
                        if ($rRs === true) {
                            $this->db->trans_commit();
                            $output["result"] = 1;
                            $output["message"] = ("Record have been deleted.");
                        } else {
                            $this->db->trans_rollback();
                            $output["result"] = -1;
                            $output["message"] = ("Fail. Please check data input and try again.");
                        }
                    }
                }else {
                    $output["message"] = ("Record does't exist.");
                }
            } else {
                $output["message"] = ("Id invalid.");
            }
        }
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function updateBatch($aData){
        if(!empty($aData)) foreach ($aData as $c){
            if($c->value!=$c->menu_value){
                $this->db
                    ->where('menu_id',$c->menu_id)
                    ->update('lang_menu',array('menu_value'=>$c->value));
            }
        }
    }
    function databinding($type='',$lang='en'){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id as 'id',
                    {$this->table}.{$this->prefix}id as 'value',
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}parent,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}status,
                    {$this->table}.{$this->prefix}token,
                    {$this->table}.{$this->prefix}value,
                    lang_title.ti_title as '{$this->prefix}title'

                ",
            "from"      =>"
                FROM `{$this->table}` 
                LEFT JOIN lang_title ON (menu_token = ti_token and ti_lang = '$lang')
            ",
            "where"     =>"WHERE `{$this->prefix}type` = '$type'",
            // "group_by"  =>"GROUP BY {$this->prefix}id",
            "order_by"  =>"ORDER BY `{$this->prefix}parent` ASC,`{$this->prefix}position` ASC",
            "columnmaps"=>array(
                
            ),
            "filterfields"=>array(

            )
        );
        $output = $this->Core_Model->jqxBinding();
        $output['rows']=$this->menu_model->buildTreeArray($output['rows']);
        $this->updateBatch($output['rows']);
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
    }
    function loadscript($src='',$unit='00000'){
    	$this->setAction($unit);
        $this->output->set_header('Content-type: application/x-javascript');
        $this->smarty->view( 'dashboard/la/menu/'.$src, $this->assigns );

    }
}