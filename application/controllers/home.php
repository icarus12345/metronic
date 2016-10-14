<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends FE_Controller {
	public function index(){
        $this->assigns->aciveMenu = 'home';
		$this->assigns->site = array(
			'title'=>'NTA - Smart Office',
			'desc'=>'',
			'image'=>''
		);
		
        
        // $this->db->where('content_type','nta');
        $this->assigns->content = $this->content_model->onGet(5);

        $this->smarty->view( 'nta/nta', $this->assigns );
    }
    function news($page = 1){
        $this->assigns->aciveMenu = 'news';
        $perpage = 12;
        $this->db->where('content_type','nta');
        $this->assigns->news_hot = $this->content_model->getLatest(null,1,5);
        $this->db->where('content_type','nta');
        $this->assigns->news_list = $this->content_model->getLatest(null,$page,$perpage);
        if(LANG == 'en'){
            $url = "/news/page/";
        }else{
            $url = "/tin-tuc/page/";
        }
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
        $this->smarty->view( 'nta/news', $this->assigns );
    }
    function promotion($page = 1,$id){
        $this->assigns->aciveMenu = 'promotion';
        $perpage = 12;
        $this->db->where('content_type','nta-promotion');
        if($id)
            $this->db->where('content_category',$id);
        $this->assigns->news_list = $this->content_model->getLatest(null,$page,$perpage);
        if(LANG == 'en'){
            $url = "/promotion/page/";
        }else{
            $url = "/khuyen-mai/page/";
        }
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
        if($id)
            $this->db->where('image_category',$id);
        $this->assigns->sliders = $this->image_model->onGetByType('slider-promo');
        $this->assigns->type = $id;
        $this->smarty->view( 'nta/promotion', $this->assigns );
    }
    function promotiondetail($id=''){
        $this->assigns->aciveMenu = 'promotion';
        $this->assigns->site = array(
            'title'=>'',
            'desc'=>'',
            'image'=>''
        );
        $this->assigns->content = $this->content_model->onGet($id);
        $this->createCaptcha();
        // $this->db->where('image_category',$id);
        $this->assigns->sliders = $this->image_model->onGetByType('slider-promo');
        $this->smarty->view( 'nta/promotionDetail', $this->assigns );
    }
    function recruitment($page = 1){
        $this->assigns->aciveMenu = 'recruitment';
        $perpage = 12;
        $this->db->where('content_type','nta-td');
        $this->assigns->news_list = $this->content_model->getLatest(null,$page,$perpage);
        if(LANG == 'en'){
            $url = "/recruitment/page/";
        }else{
            $url = "/tuyen-dung/page/";
        }
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
        $this->db->limit(4);
        $this->assigns->partners = $this->image_model->onGetByType('partner');
        $this->smarty->view( 'nta/recruitment', $this->assigns );
    }
    function recruitmentdetail($id=0){
        $this->assigns->aciveMenu = 'recruitment';
        $this->assigns->site = array(
            'title'=>'NTA - Smart Office',
            'desc'=>'',
            'image'=>''
        );
        // $this->db->where('content_type','nta');
        $this->assigns->content = $this->content_model->onGet($id);
        $this->db->where('content_type','nta-td');
        $this->assigns->relatedContent = $this->content_model->getRelated($this->assigns->content,1,4);
        $this->db->limit(4);
        $this->assigns->partners = $this->image_model->onGetByType('partner');
        $this->smarty->view( 'nta/recruitmentDetail', $this->assigns );
    }
	function product($cat_alias='',$page=1){
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		$perpage = 20;
		$cate = $this->category_model->onGetByAlias($cat_alias);
		if(!empty($cate->cat_thumb) && strrpos($cate->cat_thumb, 'http')===false){
			$cate->cat_thumb = base_url($cate->cat_thumb);
		}
		$this->assigns->site['title'] = $cate->cat_title.' - Bánh Ngon Online';
		$this->assigns->site['desc'] = $cate->cat_desc;
		$this->assigns->site['image'] = $cate->cate_thumb;
		$this->assigns->cate = $cate;
        $this->assigns->product_list = $this->product_model->getLatest($cate->cat_value,$page,$perpage);
        if(in_array($cate->cat_alias,$this->assigns->fecog['knownCate'])){
        	$url = "/{$cat_alias}/page/";
        }else{
        	$url = "/san-pham/{$cat_alias}/page/";
        }
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
		$this->smarty->view( 'cake/product_list', $this->assigns );
	}
	function productdetail($id=''){
        $this->assigns->aciveMenu = 'product';
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		$this->assigns->product = $this->product_model->onGet($id);
		$this->createCaptcha();
        $this->db->where('image_category',$id);
        $this->assigns->sliders = $this->image_model->onGetByType('nta-slider');
        $this->assigns->services = $this->image_model->onGetByType('service-nta');
        $this->smarty->view( 'nta/productDetail', $this->assigns );
	}
	function createCaptcha($re=false){
        if(!$re)
            if($_SESSION['captcha']){
                if(time()-7200 < $_SESSION['captcha']['time'])
                return;
            }
        $cap_parm = array(
            'length'  => 4,
            'img_path'  => APPPATH.'../captcha/',
            'img_url'   => '/captcha/',
            //'font_path' => './path/to/fonts/texb.ttf',
            'img_width' => 80,
            'img_height' => 30,
            'expiration' => 7200
            );
        $this->load->helper('captcha');
        $_SESSION['captcha'] = create_captcha($cap_parm);
    }
	function contact(){
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		$this->smarty->view( 'cake/contact', $this->assigns );
	}
	function gallery(){
		$this->assigns->site = array(
			'title'=>'Hình Ảnh Bánh Sinh Nhật Đẹp Nhất',
			'desc'=>'',
			'image'=>''
		);
		$this->db->order_by('album_insert','DESC');
		$this->assigns->album_list = $this->album_model->onGetByType('acake');
		$this->smarty->view( 'cake/gallery', $this->assigns );
	}
	function newsdetail($id=0){
        $this->assigns->aciveMenu = 'news';
		$this->assigns->site = array(
			'title'=>'NTA - Smart Office',
			'desc'=>'',
			'image'=>''
		);
        // $this->db->where('content_type','nta');
        $this->assigns->content = $this->content_model->onGet($id);
		$this->db->where('content_type','nta');
        $this->assigns->relatedContent = $this->content_model->getRelated($this->assigns->content,1,4);
        $this->smarty->view( 'nta/newsDetail', $this->assigns );
	}
    function contentDetail($id=4){
        $this->assigns->aciveMenu = 'about';
        $this->assigns->site = array(
            'title'=>'NTA - Smart Office',
            'desc'=>'',
            'image'=>''
        );
        // $this->db->where('content_type','nta');
        $this->assigns->content = $this->content_model->onGet($id);
        $this->smarty->view( 'nta/contentDetail', $this->assigns );
    }
    function partner(){
        $this->assigns->aciveMenu = 'partner';
        $this->assigns->sliders = $this->image_model->onGetByType('partner');
        $this->smarty->view( 'nta/partner', $this->assigns );
    }
}
