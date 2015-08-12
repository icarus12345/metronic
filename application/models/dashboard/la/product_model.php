<?php

class product_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_product', 'product_', 'id');
    }
    function getProductById($id){
        $info = $this->onGet($id);
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByToken($token){
        $query=$this->db
            ->from('lang_product')
            ->where('product_token',$token)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByCode($code){
        $query=$this->db
            ->from('lang_product')
            ->where('product_code',$code)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByAlias($sAlias=''){
        $query=$this->db
            ->select('lang_product.*')
            ->from('lang_product')
            ->join('lang_alias','product_token=als_token')
            ->where('als_alias',$sAlias)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getCategoryByType($type=null,$lang='en'){
        if($type!=null)$this->db->where('product_type',$type);
        $query=$this->db
            ->from('lang_product')
            ->join('lang_title','product_token = ti_token')
            ->where('ti_lang',$lang)
            ->order_by('product_insert','DESC')
            ->get(); 
        return $query->result();
    }
    
}
?>
