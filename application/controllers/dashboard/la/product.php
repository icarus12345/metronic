<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class product extends CP_Controller {
	function __construct() {
        parent::__construct('lang_product', 'product_', 'id');
        $this->assigns->cname = 'Category';
        $this->load->model('dashboard/la/lang_model');
        $this->load->model('dashboard/la/category_model');
        $this->load->model('dashboard/la/product_model');
        $this->load->model('dashboard/la/alias_model');
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
        $this->smarty->view( 'dashboard/la/product/viewport', $this->assigns );
    }
    function editpanel($type=''){
        $type=$this->input->post('type');
        $layout=$this->input->post('layout');
        $unit=$this->input->post('unit');
        $this->setAction($unit);

        $aCategory = $this->category_model->getCategoryByType($type);
        if($aCategory){
            $aCategory = $this->cate_model->buildTreeArray($aCategory);
            $this->assigns->aCategory=$aCategory;
        }
        $this->assigns->type=$type;
        $Id=$this->input->post('Id');
        if($Id){
            $this->assigns->item = $this->product_model->getProductById($Id);
        }
        switch ($layout){
            
            default :
                $htmlreponse = $this->smarty->view( 'dashboard/la/product/editPanel', $this->assigns, true );
        }
        
        $output["result"] = 1;
        $output["message"]='SUCCESS !';
        $output["htmlreponse"]=$htmlreponse;
        $this->output->set_header('Content-type: application/json');
        $this->output->set_output(json_encode($output));
        
    }
    function beforeinsert(){
        $aParams = $this->input->get_post('Params');
        $sType = $aParams['product_type'];
        $sCode = $aParams['product_code'];
        $aLang = $this->product_model->ArrayToList($this->assigns->aLang,'lang_short');
        foreach ($aParams['als_alias'] as $sLang => $sAlias) {
            $this->db
                    ->where('als_lang',$sLang);
            $tmp = $this->product_model->getProductByAlias($sAlias);
            if($tmp){
                $sLangTitle = $aLang[$sLang]->lang_name;
                $aMsg[] ="Alias[$sLangTitle] is exists.";
            }
        }
        $oProduct = $this->product_model->getProductByCode($sCode);
        if($oProduct){
            $aMsg[] ="CODE is exists.";
        }
        if($aMsg){
            $output["result"] = -1;
            $output["message"] = implode("<br/>", $aMsg);
            echo json_encode($output);
            die;
        }
    }
    function oninsert() {
        $this->beforeinsert();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $aParams = $this->input->get_post('Params');
        if (!empty($aParams)) {
            $sToken = md5(time().strtoupper(random_string('alnum', 8)));
            $sType = $aParams['product_type'];
            $sDate = date('Y-m-d H:i:s');
            $aParams['product_token'] = $sToken;
            foreach ($aParams['ti_title'] as $sLang => $sTitle) {
                $aTitleData[] = array(
                    'ti_title' => $aParams['ti_title'][$sLang],
                    'ti_lang' => $sLang,
                    'ti_token' => $sToken,
                    'ti_type' => $sType,
                    'ti_insert' => $sDate
                );
                $aAliasData[] = array(
                    'als_alias' => $aParams['als_alias'][$sLang],
                    'als_lang' => $sLang,
                    'als_token' => $sToken,
                    'als_type' => $sType,
                    'als_insert' => $sDate
                );
                $aDescData[] = array(
                    'de_desc' => $aParams['de_desc'][$sLang],
                    'de_lang' => $sLang,
                    'de_token' => $sToken,
                    'de_type' => $sType,
                    'de_insert' => $sDate
                );
                $aTagData[] = array(
                    'tag_tag' => $aParams['tag_tag'][$sLang],
                    'tag_lang' => $sLang,
                    'tag_token' => $sToken,
                    'tag_type' => $sType,
                    'tag_insert' => $sDate
                );
                $aContentData[] = array(
                    'co_content' => $aParams['co_content'][$sLang],
                    'co_lang' => $sLang,
                    'co_token' => $sToken,
                    'co_type' => $sType,
                    'co_insert' => $sDate
                );
            }
            
            unset($aParams['ti_title']);
            unset($aParams['als_alias']);
            unset($aParams['de_desc']);
            unset($aParams['tag_tag']);
            unset($aParams['co_content']);
            $this->db->trans_begin();
            $rRs = $this->Core_Model->onInsert($aParams);
            $rRs = $rRs && $this->db->insert_batch('lang_title', $aTitleData); 
            $rRs = $rRs && $this->db->insert_batch('lang_alias', $aAliasData); 
            $rRs = $rRs && $this->db->insert_batch('lang_desc', $aDescData); 
            $rRs = $rRs && $this->db->insert_batch('lang_tag', $aTagData); 
            $rRs = $rRs && $this->db->insert_batch('lang_content', $aContentData); 
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
    function beforeupdate(){
        $aParams = $this->input->get_post('Params');
        $sType = $aParams['product_type'];
        $sCode = $aParams['product_code'];
        $Id = $this->input->post('Id');
        $oProduct = $this->product_model->getProductById($Id);
        if($oProduct){
            $sToken = $oProduct->product_token;
            $aLang = $this->product_model->ArrayToList($this->assigns->aLang,'lang_short');
            if($aParams['als_alias'])
            foreach ($aParams['als_alias'] as $sLang => $sAlias) {
                $this->db
                    ->where('als_lang',$sLang)
                    ->where('als_token <>',$sToken);
                $tmp = $this->product_model->getProductByAlias($sAlias);
                if($tmp){
                    $sLangTitle = $aLang[$sLang]->lang_name;
                    $aMsg[] ="Alias[$sLangTitle] is exists.";
                }
            }
            $this->db->where('product_id <>',$Id);
            $oProduct = $this->product_model->getProductByCode($sCode);
            if($oProduct){
                $aMsg[] ="CODE is exists.";
            }
        }else{
            $aMsg[] ="Product is not exists.";
        }
        if($aMsg){
            $output["result"] = -1;
            $output["message"] = implode("<br/>", $aMsg);
            echo json_encode($output);
            die;
        }
    }
    function onupdate() {
        $this->beforeupdate();
        $output["result"] = -1;
        $output["message"] = "Data invalid.";
        $aParams = $this->input->get_post('Params');
        if (!empty($aParams)) {
            $Id = $this->input->post('Id');
            if (!empty($Id)) {
                $oRecord = $this->product_model->getProductById($Id);
                if ($oRecord) {
                    $rRs = true;
                    $this->db->trans_begin();
                    $sToken = $oRecord->product_token;
                    $sDate = date('Y-m-d H:i:s');
                    $sType = $oRecord->product_type;
                    if(!empty($aParams['ti_title']) && is_array($aParams['ti_title']))
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
                        if($oRecord->aTag[$sLang]!=$aParams['tag_tag'][$sLang]){
                            $aTagParams = array(
                                'tag_tag'   => $aParams['tag_tag'][$sLang],
                                'tag_token'  => $sToken,
                                'tag_lang'   => $sLang,
                                'tag_type'   => $sType
                            );
                            $aTagColumnUpdate = array('tag_tag');
                            $rRs = $rRs && $this->db->on_duplicate_update('lang_tag',$aTagColumnUpdate,$aTagParams);
                        }
                        if($oRecord->aContent[$sLang]!=$aParams['co_content'][$sLang]){
                            $aContentParams = array(
                                'co_content'   => $aParams['co_content'][$sLang],
                                'co_token'  => $sToken,
                                'co_lang'   => $sLang,
                                'co_type'   => $sType
                            );
                            $aContentColumnUpdate = array('co_content');
                            $rRs = $rRs && $this->db->on_duplicate_update('lang_content',$aContentColumnUpdate,$aContentParams);
                        }
                        if($rRs===false) break;

                    }
                    
                    unset($aParams['ti_title']);
                    unset($aParams['als_alias']);
                    unset($aParams['de_desc']);
                    unset($aParams['tag_tag']);
                    unset($aParams['co_content']);
                    $rRs = $rRs && $this->Core_Model->onUpdate($oRecord->product_id,$aParams);

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
                        $sToken = $oRecord->product_token;
                        $rRs = $rRs && $this->db
                            ->where('ti_token',$sToken)
                            ->delete('lang_title');
                        $rRs = $rRs && $this->db
                            ->where('als_token',$sToken)
                            ->delete('lang_alias');
                        $rRs = $rRs && $this->db
                            ->where('de_token',$sToken)
                            ->delete('lang_desc');
                        $rRs = $rRs && $this->db
                            ->where('tag_token',$sToken)
                            ->delete('lang_tag');
                        $rRs = $rRs && $this->db
                            ->where('co_token',$sToken)
                            ->delete('lang_content');
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
    
    function databinding($type='',$lang='en'){
        $this->Core_Model->datatables_config=array(
            "table"     =>"{$this->table}",
            "select"    =>"
                SELECT SQL_CALC_FOUND_ROWS 
                    {$this->table}.{$this->prefix}id,
                    {$this->table}.{$this->prefix}code,
                    {$this->table}.{$this->prefix}thumb,
                    {$this->table}.{$this->prefix}category,
                    {$this->table}.{$this->prefix}insert,
                    {$this->table}.{$this->prefix}update,
                    {$this->table}.{$this->prefix}token,
                    {$this->table}.{$this->prefix}status,
                    {$this->table}.{$this->prefix}lock,
                    {$this->table}.{$this->prefix}token,
                    lang_title.ti_title,
                    lang_title.ti_lang

                ",
            "from"      =>"
                FROM `{$this->table}` 
                LEFT JOIN lang_title ON (product_token = ti_token and ti_lang = '$lang')
            ",
            "where"     =>"WHERE `{$this->prefix}type` = '$type'",
            // "group_by"  =>"GROUP BY {$this->prefix}id",
            "order_by"  =>"ORDER BY `{$this->prefix}insert` DESC",
            "columnmaps"=>array(
                'cat_title'=>"{$this->prefix}category"
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
        $this->smarty->view( 'dashboard/la/product/'.$src, $this->assigns );

    }
}