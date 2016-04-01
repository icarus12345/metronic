<?php

class menu_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_menu', 'menu_', 'id');
    }
    function getMenuById($id){
        $info = $this->onGet($id);
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->menu_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->menu_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->menu_token);
            
        }
        return $info;
    }
    function getMenuByToken($token){
        $query=$this->db
            ->from('lang_menu')
            ->where('menu_token',$token)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->menu_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->menu_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->menu_token);
            
        }
        return $info;
    }
    function getMenuByType($type=null,$lang='en'){
        if($type!=null)$this->db->where('menu_type',$type);
        $query=$this->db
            ->from('lang_menu')
            ->join('lang_title','menu_token = ti_token')
            ->where('ti_lang',$lang)
            ->order_by('menu_parent','ASC')
            ->order_by('menu_position','ASC')
            ->order_by('menu_insert','ASC')
            ->get(); 
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
    function buildTreeArray(array $elements, $parentId = 0,$level=0,$value='') {
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
                    $elements[$i]->value='';
                }
                if($elements[$i]->menu_parent==$elements[$i]->menu_id){
                    $elements[$i]->menu_parent=0;
                    $elements[$i]->value='';
                }
            }
        }
        $branch = array();
        foreach ($elements as $element) {
            if ($element->menu_parent == $parentId) {
                $element->value=$value.">".$element->menu_id;
                $element->menu_level=$level;
                $children = $this->buildTreeArray($elements, $element->menu_id,$level+1,$element->value);
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
            $where = "WHERE `menu_type` = '$type'";
        
        $this->datatables_config = array(
            "table" => "`lang_menu`",
            "select" => "SELECT SQL_CALC_FOUND_ROWS `lang_menu`.*,`lang_title`.* ",
            "from" => "
                FROM `lang_menu` 
                    INNER JOIN `lang_title`
                        ON (`ti_lang` = '$lang' AND `ti_token`=`menu_token`)
            ",
            "where" => "$where",
            "order_by" => "ORDER BY `menu_parent` ASC, `menu_position` ASC, `menu_insert` DESC",
            "filterfields"=>array('ti_title'),
            "columnmaps" => array()
        );
        return $this->databinding();
    }
    function updateNodeByParent($Parent=0,$NewParent=0){
        $this->db->set('menu_update', 'NOW()', FALSE);
        $this->db->where('menu_parent', $Parent);
        @$this->db->update('lang_menu', array('menu_parent'=>$NewParent));
        $this->sqlLog('updateNodeByParent');
        @$count = $this->db->affected_rows(); //should return the number of rows affected by the last query
        if ($count > 0)
            return true;
        return false;
    }
}
?>
