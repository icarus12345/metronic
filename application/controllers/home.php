<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends FE_Controller {
	public function index(){
		// redirect('landing');
		$this->demo();
	}
	
	function category($catid='',$page=1){
		$perpage = 18;
		$limit = ($page-1) * $perpage;
		$this->_get_new_product();
		$this->_get_discount_product();
		$cat = $this->getCatById($catid);
		if($cat){
			$this->assigns->cat = $cat;
			$this->assigns->site = array(
				'title'=>$cat->title[$this->assigns->lang],
				'desc'=>$cat->desc[$this->assigns->lang],
				'image'=>!empty($cat->cat_image)?$cat->cat_image:$cat->cat_cover,
				'tag'=>''
			);
		}
		$this->getProducts($catid,$limit,$perpage);
		if($catid==0 || $catid=='' || $catid==null){
			$url = "/san-pham/page/";
		}else{
			$url = "/danh-muc/$catid/page/";
		}
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
		$this->smarty->view( 'cake/category', $this->assigns );
	}
	function manual(){
		$this->newsdetail(11);
	}
	function newsdetail($id=''){
		$this->_get_new_product();
		$this->_get_discount_product();
		$news_detail = $this->news_model->getNewsById($id);
		if($news_detail){
			$this->assigns->site = array(
				'title'=>$news_detail->aTitle[$this->assigns->lang],
				'desc'=>$news_detail->aDesc[$this->assigns->lang],
				'image'=>$news_detail->news_thumb,
				'tag'=>$news_detail->aTag[$this->assigns->lang]
				);
			$this->assigns->news_detail = $news_detail;
		}
		$this->smarty->view( 'cake/newsdetail', $this->assigns );
	}
	function formuladetail($id=''){
		$this->_get_new_product();
		$this->_get_discount_product();
		$news_detail = $this->news_model->getNewsById($id);
		if($news_detail){
			$this->assigns->site = array(
				'title'=>$news_detail->aTitle[$this->assigns->lang],
				'desc'=>$news_detail->aDesc[$this->assigns->lang],
				'image'=>$news_detail->news_thumb,
				'tag'=>$news_detail->aTag[$this->assigns->lang]
				);
			$this->assigns->news_detail = $news_detail;
		}
		$this->smarty->view( 'cake/formuladetail', $this->assigns );
	}
	function formula($page=1){
		$perpage = 5;
		$limit = ($page-1) * $perpage;
		if($limit<0) $limit = 0;
		$this->_get_new_product();
		$this->_get_discount_product();
		$this->assigns->videos = $this->data_model->getByType('video');
		$this->getFormula($limit,$perpage);
		$url = "/cong-thuc-kinh-nghiem/page/";
        $this->assigns->paging = $this->_getPaging($page,$perpage,$url);
		$this->smarty->view( 'cake/formula', $this->assigns );
	}
	function product_detail($id=''){
		$this->_get_new_product();
		$product = $this->product_model->getProductById($id);
		if($product){
			$product->product_prices=json_decode($product->product_prices,true);
			$product->cat = $this->getCatById($product->product_category);
			$product->product_images = explode(chr(10),$product->product_images);
			$this->assigns->product = $product;
			$this->db->limit(4);
			$related_products = $this->product_model->getReleted($product,$this->assigns->lang);
			if($related_products)
				$related_products = array_merge($related_products,$this->assigns->products);
			else $related_products = $this->assigns->products;
			$this->assigns->related_products = $related_products;

			$this->assigns->site = array(
				'title'=>$product->aTitle[$this->assigns->lang],
				'desc'=>$product->aDesc[$this->assigns->lang],
				'image'=>$product->product_thumb,
				'tag'=>$product->aTag[$this->assigns->lang]
				);
		}

		$this->smarty->view( 'cake/product_detail', $this->assigns );
	}
	function about(){
		$this->_get_new_product();
		$this->_get_discount_product();
		$news_detail = $this->news_model->getNewsById(10);
		if($news_detail){
			$this->assigns->site = array(
				'title'=>$news_detail->aTitle[$this->assigns->lang],
				'desc'=>$news_detail->aDesc[$this->assigns->lang],
				'image'=>$news_detail->news_thumb,
				'tag'=>$news_detail->aTag[$this->assigns->lang]
				);
			$this->assigns->news_detail = $news_detail;
		}
		$this->smarty->view( 'cake/about', $this->assigns );
	}
	function contact(){
		$this->_get_new_product();
		$this->_get_discount_product();
		$this->smarty->view( 'cake/contact', $this->assigns );
	}
	function demo(){
		$this->db
			->where('news_category',12)
			->limit(5);
		$news = $this->news_model->getByType('news',$this->assigns->lang);
		$this->assigns->news_list = $news;

		$this->_get_new_product(24);
		$this->_get_discount_product();

		$this->assigns->sliders = $this->data_model->getByType('slider');
		$this->assigns->testimonies = $this->data_model->getByType('testimonies');
		$this->smarty->view( 'cake/home', $this->assigns );
	}
	function products($page=1){
		$this->category(null,$page);
	}
	function mycart(){
		$this->_get_new_product(24);
		$this->_get_discount_product();

		$this->smarty->view( 'cake/cart', $this->assigns );
	}
	function checkout(){
		$this->_get_new_product(24);
		$this->_get_discount_product();

		$this->smarty->view( 'cake/checkout', $this->assigns );
	}
	function checkoutconfirm(){
		$this->_get_new_product(24);
		$this->_get_discount_product();

		$this->smarty->view( 'cake/checkout', $this->assigns );
	}
	function anphu_order(){
		$this->smarty->view( 'mailtemplate/anphu_order', $this->assigns );
		// $this->smarty->view( 'cake/checkoutconfirm', $this->assigns );
	}
}
