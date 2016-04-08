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
            ->select('lang_category.*, ti_lang, ti_title, de_lang, de_desc, als_lang, als_alias')
            ->from('lang_category')
            ->join('lang_title','cat_token = ti_token','left')
            ->join('lang_desc','cat_token = de_token','left')
            ->join('lang_alias','cat_token = als_token','left')
            // ->where('ti_lang',$lang)
            ->order_by('cat_parent','ASC')
            ->order_by('cat_position','ASC')
            ->order_by('cat_insert','ASC')
            ->get();
        $tmpdata = $query->result();
        $index = 0;
        $aId = array();
        if($tmpdata)
            foreach ($tmpdata as $key => $value) {
                if(!array_key_exists($value->cat_id,$aId)){
                    $data[$index] = $value;
                    $data[$index]->title = array();
                    $aId[$value->cat_id] = $index++;
                    $data[$aId[$value->cat_id]]->title[$value->ti_lang] = $value->ti_title;
                    $data[$aId[$value->cat_id]]->desc[$value->de_lang] = $value->de_desc;
                    $data[$aId[$value->cat_id]]->alias[$value->als_lang] = $value->als_alias;
                    unset($data[$aId[$value->cat_id]]->ti_lang);
                    unset($data[$aId[$value->cat_id]]->ti_title);
                    unset($data[$aId[$value->cat_id]]->de_lang);
                    unset($data[$aId[$value->cat_id]]->de_lang);
                    unset($data[$aId[$value->cat_id]]->de_desc);
                    unset($data[$aId[$value->cat_id]]->als_lang);
                    unset($data[$aId[$value->cat_id]]->als_alias);
                } else {
                    $data[$aId[$value->cat_id]]->title[$value->ti_lang] = $value->ti_title;
                    $data[$aId[$value->cat_id]]->desc[$value->de_lang] = $value->de_desc;
                    $data[$aId[$value->cat_id]]->alias[$value->als_lang] = $value->als_alias;
                }
            }
        return $data;
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
