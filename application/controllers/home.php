<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends FE_Controller {
	public function index(){
		redirect('landing');
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		//print_r($this->assigns->aCategory);
        $this->smarty->view( 'cake/home', $this->assigns );
	}
	function product_detail($id=''){
		$this->db->limit(12);
		$products = $this->product_model->getCategoryByType('cake','vi');
		foreach ($products as $key => $value) {
			$products[$key]->cat = $this->getCatById($value->product_category);
		}
		$this->assigns->products = $products;
		$product = $this->product_model->getProductById($id);
		$product->product_prices=json_decode($product->product_prices,true);
		$product->cat = $this->getCatById($product->product_category);
		$this->assigns->product = $product;
		$this->smarty->view( 'cake/product_detail', $this->assigns );
	}
	function demo(){
		$this->db
			->where('news_category',12)
			->limit(5);
		$news = $this->news_model->getCategoryByType('news','vi');

		$this->db->limit(12);
		$products = $this->product_model->getCategoryByType('cake','vi');
		foreach ($products as $key => $value) {
			$products[$key]->cat = $this->getCatById($value->product_category);
		}
		$this->db->limit(10);
		$discount_products = $this->product_model->getByDiscount('vi');
		$this->assigns->news_list = $news;
		$this->assigns->products = $products;
		$this->assigns->discount_products = $discount_products;
		// print_r($products);die;

		$this->assigns->sliders = $this->data_model->getByType('slider');
		$this->assigns->testimonies = $this->data_model->getByType('testimonies');
		$this->smarty->view( 'cake/home', $this->assigns );
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
	function productdetail($alias=''){
		$this->assigns->site = array(
			'title'=>'',
			'desc'=>'',
			'image'=>''
		);
		$product = $this->product_model->onGetByAlias($alias);
		$this->_addView('_product','product_',$product->product_id);
		if(!empty($product->product_thumb) && strrpos($product->product_thumb, 'http')===false){
			$product->product_thumb = base_url($product->product_thumb);
		}
		$this->assigns->site['title'] = $product->product_title.' - Bánh Ngon Online';
		$this->assigns->site['desc'] = $product->product_desc;
		$this->assigns->site['image'] = $product->product_thumb;
		$cate = $this->category_model->onGet($product->product_category);
		$this->assigns->product = $product;
		$this->assigns->cate = $cate;
		$this->assigns->product_list = $this->product_model->getRelated($product,1,5);
		$this->smarty->view( 'cake/product_detail', $this->assigns );
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
