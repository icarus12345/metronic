<?php

class topic_model extends Core_Model {

    function __construct(){
        parent::__construct('_topic','topic_','id');
    }
    function onGetByType($type=''){
    	if($type!=null)$this->db->where('topic_type',$type);
        $query=$this->db
        	->select('_topic.*,author_id,author_name',false)
            ->from('_topic')
            ->join('_author','topic_author = author_id','left')
            ->order_by('topic_author','ASC')
            ->order_by('topic_insert','ASC')
            ->get(); 
        $this->sqlLog('GetTopicByType');
        return $query->result();
    }
}
?>