<?php
class FE_Controller extends CI_Controller {
    public $assigns;
    public function __construct() {
        parent::__construct();
        $this->smarty->caching = false;
        $this->assigns = new stdClass();
        $this->load->library('pagination');
        $this->load->model('dashboard/la/lang_model');
        $this->load->model('dashboard/la/category_model');
        $this->load->model('dashboard/la/news_model');
        $this->load->model('dashboard/la/product_model');
        $this->load->model('dashboard/la/data_model');
        $aCategory = $this->category_model->getCategoryByType('cake');
        if($aCategory){
            $this->assigns->listCategory=$aCategory;
            $aCategory = $this->category_model->buildTree($aCategory);
            $this->assigns->aCategory=$aCategory;
        }
        $pos = strpos($_SERVER['SERVER_NAME'], 'en.');
        if ($pos === false) {
            $this->assigns->lang = 'vi';
        }else{
            $this->assigns->lang = 'en';
        }
        // $this->iLanguage =new CI_Language();
        // $this->assigns->languages = $this->iLanguage->load('all',$this->assigns->lang,true);
        
    }
    function getCatById($Id){
        foreach ($this->assigns->listCategory as $key => $value) {
            if($value->cat_id == $Id) return $value;
        }
        return null;
    }
    
    function nothing(){}
    function _addView($table='',$prefix='',$id){
        if($_SESSION["addviews"][date('Y-m-d-H-i')]["$table$id"]) return;
        $_SESSION["addviews"][date('Y-m-d-H-i')]["$table$id"] = 1;
        $this->db->set($prefix.'view',$prefix."view +1",false)
            ->where($prefix.'id',$id)
            ->update($table);
        $this->load->model('dashboard/cp/chart_model');
        $this->chart_model->add($table,$id);
    }
    function _getPaging($page=1,$perpage=10,$function=''){
        $query = $this->db->query('SELECT FOUND_ROWS() AS `found_rows`;');
        $tmp = $query->row_array();
        $total_rows = $tmp['found_rows'];
        $config['is_ajax_paging'] = $this->input->is_ajax_request();
        $config['paging_function'] = $function;
        $config['base_url'] = $function;
        $config['first_url'] = "";
        $config['suffix'] = '';
        $config['total_rows'] = $this->assigns->total_rows = $total_rows;
        $config['per_page'] = $perpage;
        $config['cur_page'] = $page;
        $config['num_links'] = 5;
        $config['use_page_numbers'] = true;
        // $config['uri_segment'] = 4;
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';

        $config['first_link'] = '«';
        // $config['first_link'] = false;
        $config['first_tag_open'] = '<li class="page first">';
        $config['first_tag_close'] = '</li>';

        $config['last_link'] = '»';
        // $config['last_link'] = false;
        $config['last_tag_open'] = '<li class="page last">';
        $config['last_tag_close'] = '</li>';

        $config['next_link'] = '›';
        $config['next_tag_open'] = '<li class="page prev">';
        $config['next_tag_close'] = '</li>';

        $config['prev_link'] = '‹';
        $config['prev_tag_open'] = '<li class="page next">';
        $config['prev_tag_close'] = '</li>';

        $config['cur_tag_open'] = '<li class="active">';
        $config['cur_tag_close'] = '</li>';

        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';

        $this->pagination->initialize($config);
        return $this->pagination->create_links();
    }
}
?>