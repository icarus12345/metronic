<?php

class language_model extends Core_Model {

    function __construct(){
        parent::__construct('languages','lang_');
    }
    function getLangIn($langs){
        $query = $this->db
                ->where_in("lang_short",$langs)
                ->get('languages');
        $this->sqlLog('getLangIn');
        return $query->result();
    }
    function getLangTitleByToken($token='',$langs=array()){
        $query = $this->db
                ->where("ti_token",$token)
                ->where_in('ti_lang',$langs)
                ->get('languagestitle');
        $this->sqlLog('getLangTitleByToken');
        return $query->result();
    }
    function getLangDescByToken($token='',$langs=array()){
        $query = $this->db
                ->where("de_token",$token)
                ->where_in('de_lang',$langs)
                ->get('languagesdesc');
        $this->sqlLog('getLangDescByToken');
        return $query->result();
    }
    function insertBatchTitle($data){
        $this->db->insert_batch('languagestitle', $data);
        $this->sqlLog('insertBatchTitle');
    }
    function updateBatchTitle($data){
        $this->db->update_batch('languagestitle', $data,'ti_id');
        $this->sqlLog('updateBatchTitle');
    }
    function insertBatchDesc($data){
        $this->db->insert_batch('languagesdesc', $data);
        $this->sqlLog('insertBatchDesc');
    }
    function updateBatchDesc($data){
        $this->db->update_batch('languagesdesc', $data,'de_id');
        $this->sqlLog('updateBatchDesc');
    }
    function insertBatchContent($data){
        $this->db->insert_batch('languagescontent', $data);
        $this->sqlLog('insertBatchContent');
    }
    function updateBatchContent($data){
        $this->db->update_batch('languagescontent', $data,'co_id');
        $this->sqlLog('updateBatchContent');
    }
    function insertOnduplicateUpdateTitle($aParamsi,$aUpdate){
        $this->db->on_duplicate_update('languagestitle', $aUpdate, $aParamsi);
        $this->sqlLog('insertOnduplicateUpdateTitle');
    }
    function insertOnduplicateUpdateDesc($aParamsi,$aUpdate){
        $this->db->on_duplicate_update('languagesdesc', $aUpdate, $aParamsi);
        $this->sqlLog('insertOnduplicateUpdateDesc');
    }
    function insertOnduplicateUpdateContent($aParamsi,$aUpdate){
        $this->db->on_duplicate_update('languagescontent', $aUpdate, $aParamsi);
        $this->sqlLog('insertOnduplicateUpdateContent');
    }
    function deleteTitleByToken($token='',$type=''){
        $where = array(
            "ti_token" => $token,
            "ti_type" => $type
        );
        $this->db->delete('languagestitle', $where);
        $this->sqlLog('deleteTitleByToken');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count >= 1)
            return true;
        return false;
    }
    function deleteDescByToken($token='',$type=''){
        $where = array(
            "de_token" => $token,
            "de_type" => $type
        );
        $this->db->delete('languagesdesc', $where);
        $this->sqlLog('deleteDescByToken');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count >= 1)
            return true;
        return false;
    }
    function deleteContentByToken($token='',$type=''){
        $where = array(
            "co_content" => $token,
            "co_type" => $type
        );
        $this->db->delete('languagescontent', $where);
        $this->sqlLog('deleteContentByToken');
        $count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count >= 1)
            return true;
        return false;
    }
}
?>
