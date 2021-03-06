<?php

class news_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_news', 'news_', 'id');
        $this->status = null;
    }
    function getNewsById($id){
        if($this->status!=null)$this->db->where('news_status',$this->status);
        $info = $this->onGet($id);
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->news_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->news_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->news_token);
            $info->aTag = $this->lang_model->getTagByToken($info->news_token);
            $info->aContent = $this->lang_model->getContentByToken($info->news_token);
            
        }
        return $info;
    }
    function getnewsByToken($token){
        if($this->status!=null)$this->db->where('news_status',$this->status);
        $query=$this->db
            ->from('lang_news')
            ->where('news_token',$token)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->news_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->news_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->news_token);
            $info->aTag = $this->lang_model->getTagByToken($info->news_token);
            $info->aContent = $this->lang_model->getContentByToken($info->news_token);
            
        }
        return $info;
    }
    function getnewsByAlias($sAlias=''){
        if($this->status!=null)$this->db->where('news_status',$this->status);
        $query=$this->db
            ->select('lang_news.*')
            ->from('lang_news')
            ->join('lang_alias','news_token=als_token')
            ->where('als_alias',$sAlias)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->news_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->news_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->news_token);
            $info->aTag = $this->lang_model->getTagByToken($info->news_token);
            $info->aContent = $this->lang_model->getContentByToken($info->news_token);
            
        }
        return $info;
    }
    function select(){
        $this->db->select("
            SQL_CALC_FOUND_ROWS *
        ",false);
    }
    function getByType($type=null,$lang='en'){
        if($this->status!=null)$this->db->where('news_status',$this->status);
        if($type!=null)$this->db->where('news_type',$type);
        $query=$this->db
            ->from('lang_news')
            ->join('lang_title',"news_token = ti_token and ti_lang = '$lang'",'left')
            ->join('lang_desc',"news_token = de_token and de_lang = '$lang'",'left')
            ->join('lang_alias',"news_token = als_token and als_lang = '$lang'",'left')
            // ->where('ti_lang',$lang)
            // ->where('de_lang',$lang)
            ->order_by('news_position','ASC')
            ->order_by('news_insert','DESC')
            ->get(); 
        return $query->result();
    }
    
}
?>
