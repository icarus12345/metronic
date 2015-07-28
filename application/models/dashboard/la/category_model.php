<?php

class category_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_category', 'cat_', 'id');
    }
    function getCategoryById($id){
        $info = $this->onGet($id);
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->cat_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->cat_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->cat_token);
            
        }
        return $info;
    }
    function getCategoryByToken($token){
        $query=$this->db
            ->from('lang_category')
            ->where('cat_token',$token)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->cat_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->cat_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->cat_token);
            
        }
        return $info;
    }
    function getCategoryByType($type=null,$lang='en'){
        if($type!=null)$this->db->where('cat_type',$type);
        $query=$this->db
            ->from('lang_category')
            ->join('lang_title','cat_token = ti_token')
            ->where('ti_lang',$lang)
            ->order_by('cat_parent','ASC')
            ->order_by('cat_position','ASC')
            ->order_by('cat_insert','ASC')
            ->get(); 
        return $query->result();
    }
    function buildTree(array $elements, $parentId = 0,$parents=array(0)) {
        $branch = array();
        foreach ($elements as $element) {
            if ($element->cat_parent == $parentId) {
                $tmp=$parents;$tmp[]=$element->cat_id;
                $children = $this->buildTree($elements, $element->cat_id,$tmp);
                if ($children) {
                    $element->cat_children = $children;
                }
                $element->cat_parents=$parents;
                $branch[] = $element;
            }
        }
        return $branch;
    }
    function buildTreeArray(array $elements, $parentId = 0,$level=0,$value='') {
        if($parentId==0){
            for ($i=0;$i<count($elements);$i++) {
                $f=false;
                
                for ($j=0;$j<count($elements);$j++) {
                    if( 
                        $elements[$i]->cat_parent==$elements[$j]->cat_id &&
                        $elements[$i]->cat_type==$elements[$j]->cat_type
                    ){
                        $f=true;
                        break;
                    }
                }
                if($f==false){
                    $elements[$i]->cat_parent=0;
                    $elements[$i]->value='';
                }
                if($elements[$i]->cat_parent==$elements[$i]->cat_id){
                    $elements[$i]->cat_parent=0;
                    $elements[$i]->value='';
                }
            }
        }
        $branch = array();
        foreach ($elements as $element) {
            if ($element->cat_parent == $parentId) {
                $element->value=$value.">".$element->cat_id;
                $element->cat_level=$level;
                $children = $this->buildTreeArray($elements, $element->cat_id,$level+1,$element->value);
                if (!empty($children)) $element->isparent = 1;
                $branch[] = $element;
                if (!empty($children)){

                    foreach ($children as $ch){
                        $branch[] = $ch;
                    }
                }
            }
        }
        return $branch;
    }
    function binding($type=null,$lang='en'){
        $where = "WHERE TRUE";
        if ($type!==null)
            $where = "WHERE `cat_type` = '$type'";
        
        $this->datatables_config = array(
            "table" => "`category`",
            "select" => "SELECT SQL_CALC_FOUND_ROWS `category`.*,`lang_title`.* ",
            "from" => "
                FROM `category` 
                    INNER JOIN `lang_title`
                        ON (`ti_lang` = '$lang' AND `ti_token`=`cat_token`)
            ",
            "where" => "$where",
            "order_by" => "ORDER BY `cat_parent` ASC, `cat_position` ASC, `cat_insert` DESC",
            "filterfields"=>array('ti_title'),
            "columnmaps" => array()
        );
        return $this->databinding();
    }
    function updateNodeByParent($Parent=0,$NewParent=0){
        $this->db->set('cat_update', 'NOW()', FALSE);
        $this->db->where('cat_parent', $Parent);
        @$this->db->update('category', array('cat_parent'=>$NewParent));
        $this->sqlLog('updateNodeByParent');
        @$count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count > 0)
            return true;
        return false;
    }
}
?>
