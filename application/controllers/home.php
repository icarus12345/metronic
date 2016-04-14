<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends FE_Controller {
	public function index(){
		// redirect('landing');
		$this->demo();
	}
	
	function category($catid='',$page=1){
		$perpage = 12;
		$limit = ($page-1) * $perpage;
		$this->_get_new_product();
		$this->_get_discount_product();
		$this->assigns->cat = $this->getCatById($catid);

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
		$this->assigns->news_detail = $this->news_model->getNewsById($id);
		$this->smarty->view( 'cake/newsdetail', $this->assigns );
	}
	function formuladetail($id=''){
		$this->_get_new_product();
		$this->_get_discount_product();
		$this->assigns->news_detail = $this->news_model->getNewsById($id);
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
		}

		$this->smarty->view( 'cake/product_detail', $this->assigns );
	}
	function about(){
		$this->_get_new_product();
		$this->_get_discount_product();
		$this->assigns->news_detail = $this->news_model->getNewsById(10);
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
