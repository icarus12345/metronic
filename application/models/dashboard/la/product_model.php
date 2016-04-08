<?php

class product_model extends Core_Model {

    function __construct(){
        parent::__construct('lang_product', 'product_', 'id');
    }
    function getProductById($id){
        $info = $this->onGet($id);
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByToken($token){
        $query=$this->db
            ->from('lang_product')
            ->where('product_token',$token)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByCode($code){
        $query=$this->db
            ->from('lang_product')
            ->where('product_code',$code)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getProductByAlias($sAlias=''){
        $query=$this->db
            ->select('lang_product.*')
            ->from('lang_product')
            ->join('lang_alias','product_token=als_token')
            ->where('als_alias',$sAlias)
            ->get(); 
        $info = $query->row();
        if($info){
            $info->aTitle = $this->lang_model->getTitleByToken($info->product_token);
            $info->aAlias = $this->lang_model->getAliasByToken($info->product_token);
            $info->aDesc = $this->lang_model->getDescByToken($info->product_token);
            $info->aTag = $this->lang_model->getTagByToken($info->product_token);
            $info->aContent = $this->lang_model->getContentByToken($info->product_token);
            
        }
        return $info;
    }
    function getCategoryByType($type=null,$lang='en'){
        if($type!=null)$this->db->where('product_type',$type);
        $query=$this->db
            ->from('lang_product')
            ->join('lang_title','product_token = ti_token')
            ->join('lang_data','product_token = data_token')
            ->where('ti_lang',$lang)
            ->order_by('product_insert','DESC')
            ->get(); 
        $tmpdata = $query->result();
        $index = 0;
        $aId = array();
        if($tmpdata)
            foreach ($tmpdata as $key => $value) {
                if(!array_key_exists($value->product_id,$aId)){
                    $data[$index] = $value;
                    $data[$index]->title = array();
                    $aId[$value->product_id] = $index++;
                    
                }
                $data[$aId[$value->product_id]]->data[] = json_decode($value->data_data);
            }
        return $data;
    }
    
}
?>
