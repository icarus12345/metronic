<?php

class menu_model extends Core_Model {

    function __construct(){
        parent::__construct('menu', 'menu_', 'id');
    }
    function getMenuByType($type=null){
        if($type!=null)$this->db->where('menu_type',$type);
        $query=$this->db
            ->from('menu')
            //->order_by('menu_parent','ASC')
            ->order_by('menu_position','ASC')
            ->order_by('menu_insert','ASC')
            ->get(); 
        $this->sqlLog('getMenuByType');
        return $query->result();
    }
    function buildTree(array $elements, $parentId = 0,$parents=array(0)) {
        $branch = array();
        foreach ($elements as $element) {
            if ($element->menu_parent == $parentId) {
                $tmp=$parents;$tmp[]=$element->menu_id;
                $children = $this->buildTree($elements, $element->menu_id,$tmp);
                if ($children) {
                    $element->menu_children = $children;
                }
                $element->menu_parents=$parents;
                $branch[] = $element;
            }
        }
        return $branch;
    }
    function buildTreeArray(array $elements, $parentId = 0,$level=0,$parent_title='',$path='') {
        if($parentId==0){
            for ($i=0;$i<count($elements);$i++) {
                $f=false;
                
                for ($j=0;$j<count($elements);$j++) {
                    if( 
                        $elements[$i]->menu_parent==$elements[$j]->menu_id &&
                        $elements[$i]->menu_type==$elements[$j]->menu_type
                    ){
                        $f=true;
                        break;
                    }
                }
                if($f==false){
                    $elements[$i]->menu_parent=0;
                    $elements[$i]->menu_parent_title='';
                    $elements[$i]->menu_error='parent not exist';
                    $elements[$i]->menu_path='';
                }
                if($elements[$i]->menu_parent==$elements[$i]->menu_id){
                    $elements[$i]->menu_parent=0;
                    $elements[$i]->menu_parent_title='';
                    $elements[$i]->menu_path='';
                    $elements[$i]->menu_error=2;
                }
            }
        }
        $branch = array();
        foreach ($elements as $element) {
            if ($element->menu_parent == $parentId) {
                $element->menu_level=$level;$element->menu_parent_title=$parent_title;
                $element->menu_display=repeater('----',$level).$element->menu_title;
                $element->menu_display=$path."/".$element->menu_title;
                $element->isparent = 0;
                $children = $this->buildTreeArray($elements, $element->menu_id,$level+1,$element->menu_title,$path.'/'.$element->menu_title);
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
    function binding($type=null){
        $where = "WHERE TRUE";
        if ($type!==null)
            $where = "WHERE `menu_type` = '$type'";
        
        $this->datatables_config = array(
            "table" => "`menu`",
            "select" => "SELECT SQL_CALC_FOUND_ROWS `menu`.*",
            "from" => "FROM `menu`",
            "where" => "$where",
            "order_by" => "ORDER BY `menu_parent` ASC, `menu_position` ASC, `menu_insert` DESC",
            "filterfields"=>array('menu_title'),
            "columnmaps" => array()
        );
        return $this->databinding();
    }
    function updateNodeByParent($Parent=0,$NewParent=0){
        $this->db->set('menu_update', 'NOW()', FALSE);
        $this->db->where('menu_parent', $Parent);
        @$this->db->update('menu', array('menu_parent'=>$NewParent));
        $this->sqlLog('updateNodeByParent');
        @$count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count > 0)
            return true;
        return false;
    }
}
?>
