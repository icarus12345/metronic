<?php

class image_model extends Core_Model {

    function __construct(){
        parent::__construct('_image','image_','id');
        $this->status='true';
    }
    function onGetByType($type=''){
        if($this->status){
            $this->db->where("{$this->prefix}status",$this->status);
        }
        $query = $this->db
            ->where("{$this->prefix}type", $type)
            ->get($this->table);
        $data=$query->result();
        if(LANG == 'en'){
            foreach ($data as $key => $value) {
                $data[$key]->image_title = $data[$key]->image_title_en;
                $data[$key]->image_desc = $data[$key]->image_desc_en;
                $data[$key]->image_content = $data[$key]->image_content_en;
                $data[$key]->image_subtitle = $data[$key]->image_subtitle_en;
            }
        }
        return $data;
    }
    function getByToken($token=null){
        if($token!=null)$this->db->where('image_token',$token);
        $select = "SQL_CALC_FOUND_ROWS *";
        $query=$this->db
                ->select('SQL_CALC_FOUND_ROWS *',false)
                ->from('_image')
                ->where('image_status','true')
                ->order_by('image_position','ASC')
                ->order_by('image_insert','ASC')
                ->get();
        $data=$query->result();
        if(LANG == 'en'){
            foreach ($data as $key => $value) {
                $data[$key]->image_title = $data[$key]->image_title_en;
                $data[$key]->image_desc = $data[$key]->image_desc_en;
                $data[$key]->image_content = $data[$key]->image_content_en;
                $data[$key]->image_subtitle = $data[$key]->image_subtitle_en;
            }
        }
        return $data;
    }
}
?>
