<?php
class FE_Controller extends CI_Controller {
    public $assigns;
    public function __construct() {
        parent::__construct();
        $this->smarty->caching = false;
        $this->assigns = new stdClass();
        $this->load->library('pagination');
        $this->load->model('front/category_model');
        $this->load->model('front/image_model');
        $this->load->model('front/product_model');
        $this->load->model('front/album_model');
        $this->load->model('front/content_model');
        $this->load->model('front/data_model');
        $this->assigns->settting_data = $this->data_model->loadData('scake');
        $this->assigns->fecog = array(
            'slider'=> 'slider',
            'cake'=> 'cake',
            'bsn'=> '419',
            'bc'=> '420',
            'bv'=> '421',
            'bcupket'=> '422',
            'knownCate'=>array(
                'banh-sinh-nhat',
                'banh-cuoi',
                'banh-ve',
                'banh-cupcake'
            )
        );
        if(!$this->input->is_ajax_request()){
            $this->assigns->cates = $this->category_model->onGetByType($this->assigns->fecog['cake']);
            $this->assigns->sliders = $this->image_model->onGetByType($this->assigns->fecog['slider']);
        }

        // $pos = strpos($_SERVER['SERVER_NAME'], 'en.');
        // if ($pos === false) {
        //     $this->assigns->lang = 'vi';
        // }else{
        //     $this->assigns->lang = 'en';
        // }
        // $this->iLanguage =new CI_Language();
        // $this->assigns->languages = $this->iLanguage->load('all',$this->assigns->lang,true);
        
    }
    
    
    function nothing(){}
    function _addView($table='',$prefix='',$id){
        if($_SESSION["addviews"][date('Y-m-d H')]["$table$id"]) return;
        $_SESSION["addviews"][date('Y-m-d H')]["$table$id"] = 1;
        $this->db->set($prefix.'view',$prefix."view +1",false)
            ->where($prefix.'id',$id)
            ->update($table);
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