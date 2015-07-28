<?php

class lang_model extends Core_Model {

    function __construct(){
        parent::__construct('languages', 'lang_', 'id');
    }
    function getLanguage(){
        $query=$this->db
            ->from('languages')
            ->where('lang_status','true')
            ->order_by('lang_insert','ASC')
            ->get(); 
        return $query->result();
    }
    function getTitleByToken($token=''){
        $query=$this->db
            ->from('lang_title')
            ->where('ti_token', $token)
            ->get(); 
        $aTitle = $query->result();
        foreach ($aTitle as $tmp) {
            $data[$tmp->ti_lang] = $tmp->ti_title;
        }
        return $data;
    }
    function getAliasByToken($token=''){
        $query=$this->db
            ->from('lang_alias')
            ->where('als_token', $token)
            ->get(); 
        $aAlias = $query->result();
        foreach ($aAlias as $tmp) {
            $data[$tmp->als_lang] = $tmp->als_alias;
        }
        return $data;
    }
    function getDescByToken($token=''){
        $query=$this->db
            ->from('lang_desc')
            ->where('de_token', $token)
            ->get(); 
        $aDesc = $query->result();
        foreach ($aDesc as $tmp) {
            $data[$tmp->de_lang] = $tmp->de_desc;
        }
        return $data;
    }
    function getTagByToken($token=''){
        $query=$this->db
            ->from('lang_tag')
            ->where('tag_token', $token)
            ->get(); 
        $aTag = $query->result();
        foreach ($aTag as $tmp) {
            $data[$tmp->tag_lang] = $tmp->tag_tag;
        }
        return $data;
    }
    function getContentByToken($token=''){
        $query=$this->db
            ->from('lang_content')
            ->where('co_token', $token)
            ->get(); 
        $aContent = $query->result();
        foreach ($aContent as $tmp) {
            $data[$tmp->co_lang] = $tmp->co_content;
        }
        return $data;
    }
}
?>
