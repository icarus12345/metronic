<?php

class content_model extends Core_Model {

    function __construct(){
        parent::__construct('content','content_','id');
    }
    function getByType($type=null,$page=1,$limit=8,$cat=0){
        if($type!=null)$this->db->where('content_type',$type);
        if($cat!=0)$this->db->where('content_category',$cat);
        $query=$this->db
                ->select("SQL_CALC_FOUND_ROWS content_id,content_title,content_thumb,content_desc,cat_title",false)
                ->from('content')
                ->join('cate','content.content_category = cate.cat_id','left')
                ->where('content_status','true')
                ->order_by('content_position','ASC')
                ->order_by('content_insert','ASC')
                ->limit($limit,($page-1)*$limit)
                ->get();
        return $query->result();
    }
}
?>
