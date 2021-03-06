<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/
// $route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)/page/(:num)"] = "home/product/$1/$2";
// $route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)/page"] = "home/product/$1";
// $route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)"] = "home/product/$1";
// $route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)"] = "home/product/$1";


// $route["([a-z0-9-]{4,255})/chi-tiet/(:num)/(:any)"] = "home/productdetail/$3";
// $route["thong-tin-banh/([a-z0-9-]{4,255})"] = "home/productdetail/$1";

// $route["san-pham/([a-z0-9-]{4,255})/page/(:num)"] = "home/product/$1/$2";
// $route["san-pham/([a-z0-9-]{4,255})/page"] = "home/product/$1";

$route["(danh-muc|category)/(:num)"] = "home/category/$2";
$route["(danh-muc|category)/(:num)/page"] = "home/category/$2/1";
$route["(danh-muc|category)/(:num)/page/(:num)"] = "home/category/$2/$3";
$route["(san-pham|product)"] = "home/products";
$route["(san-pham|product)/page"] = "home/products/1";
$route["(san-pham|product)/page/(:num)"] = "home/products/$2";
$route["(san-pham|product)/(:num)"] = "home/product_detail/$2";
$route["(san-pham|product)/(:num)/(:any)"] = "home/product_detail/$2";
$route["(san-pham|product)/([a-z0-9-]{4,255})"] = "home/product_detail_alias/$2";
$route["(ve-chung-toi|about)"] = "home/about";
$route["(huong-dan|manual)"] = "home/manual";
$route["(cong-thuc-kinh-nghiem|formula)"] = "home/formula";
$route["(cong-thuc-kinh-nghiem|formula)/(:num)"] = "home/formuladetail/$2";
$route["(cong-thuc-kinh-nghiem|formula)/page"] = "home/formula/1";
$route["(cong-thuc-kinh-nghiem|formula)/page/(:num)"] = "home/formula/$2";
$route["(cong-thuc-kinh-nghiem|formula)/([a-z0-9-]{4,255})"] = "home/formuladetail_alias/$2";
$route["(tin-tuc|news)/(:num)"] = "home/newsdetail/$2";

$route["(gio-hang|cart)"] = "home/mycart";
$route["checkout"] = "home/checkout";
$route["checkout-confirm"] = "home/checkoutconfirm";
$route["cong-thuc"] = "home/contentdetail/1";
$route["nguyen-lieu"] = "home/contentdetail/2";
$route["day-nghe"] = "home/contentdetail/3";

$route["tin-tuc/(:any)"] = "home/contentdetail/$1";

$route["lien-he"] = "home/contact";
$route["hinh-anh"] = "home/gallery";

$route['default_controller'] = "home";
$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */