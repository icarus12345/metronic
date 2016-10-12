<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends FE_Controller {
	public function index(){
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		
        
        $this->db->where('content_type','nta');
		$this->assigns->news_list = $this->content_model->getLatest(null,1,4);

        $this->assigns->content = $this->content_model->onGet(5);

        $this->smarty->view( 'nta/nta', $this->assigns );
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
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		$this->assigns->product = $this->product_model->onGet($id);

        $this->db->where('image_category',$id);
        $this->assigns->sliders = $this->image_model->onGetByType('nta-slider');
        $this->smarty->view( 'nta/productDetail', $this->assigns );
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
	function contentdetail($id=0){
		$this->assigns->site = array(
			'title'=>' - Bánh Ngon Online',
			'desc'=>'',
			'image'=>''
		);
		if(is_numeric($id)){
			$content = $this->content_model->onGet($id);
			if(!empty($content->content_thumb) && strrpos($content->content_thumb, 'http')===false){
				$content->content_thumb = base_url($content->content_thumb);
			}
			$this->assigns->site['title'] = $content->content_title.' - Bánh Ngon Online';
			$this->assigns->site['desc'] = $content->content_desc;
			$this->assigns->site['image'] = $content->content_thumb;
			$this->assigns->content = $content;
			$this->smarty->view( 'cake/content', $this->assigns );
		}else{
			$content = $this->content_model->onGetByAlias($id);
			if(!empty($content->content_thumb) && strrpos($content->content_thumb, 'http')===false){
				$content->content_thumb = base_url($content->content_thumb);
			}
			$this->assigns->site['title'] = $content->content_title.' - Bánh Ngon Online';
			$this->assigns->site['desc'] = $content->content_desc;
			$this->assigns->site['image'] = $content->content_thumb;
			$this->assigns->related_contents = $this->content_model->getRelated($content,1,8);
			$this->assigns->content = $content;
			$this->smarty->view( 'cake/news_detail', $this->assigns );
		}
	}

}
