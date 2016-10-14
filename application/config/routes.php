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
$route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)/page/(:num)"] = "home/product/$1/$2";
$route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)/page"] = "home/product/$1";
$route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)"] = "home/product/$1";
$route["(banh-sinh-nhat|banh-cuoi|banh-ve|banh-cupcake)"] = "home/product/$1";


$route["([a-z0-9-]{4,255})/chi-tiet/(:num)/(:any)"] = "home/productdetail/$3";
$route["thong-tin-banh/([a-z0-9-]{4,255})"] = "home/productdetail/$1";

$route["san-pham/([a-z0-9-]{4,255})/page/(:num)"] = "home/product/$1/$2";
$route["san-pham/([a-z0-9-]{4,255})/page"] = "home/product/$1";
$route["san-pham/([a-z0-9-]{4,255})"] = "home/product/$1";

$route["cong-thuc"] = "home/contentdetail/1";
$route["nguyen-lieu"] = "home/contentdetail/2";
$route["day-nghe"] = "home/contentdetail/3";

// $route["(tin-tuc:news)/(:any)"] = "home/contentdetail/$1";
$route["(tin-tuc|news)/page/(:num)"] = "home/news/$2";
$route["(tin-tuc|news)/page"] = "home/news/1";
$route["(tin-tuc|news)"] = "home/news/1";

$route["(tuyen-dung|recruitment)/page/(:num)"] = "home/recruitment/$2";
$route["(tuyen-dung|recruitment)/page"] = "home/recruitment/1";
$route["(tuyen-dung|recruitment)"] = "home/recruitment/1";

$route["(khuyen-mai|promotion)/(:any)/(:num)/page/(:num)"] = "home/promotion/$4/$3";
$route["(khuyen-mai|promotion)/(:any)/(:num)/page"] = "home/promotion/1/$3";
$route["(khuyen-mai|promotion)/(:any)/(:num)"] = "home/promotion/1/$3";
$route["(khuyen-mai|promotion)/page/(:num)"] = "home/promotion/$2";
$route["(khuyen-mai|promotion)/page"] = "home/promotion/1";
$route["(khuyen-mai|promotion)"] = "home/promotion/1";

$route["(:any)/p-(:num)"] = "home/productdetail/$2";
$route["(:any)/n-(:num)"] = "home/newsdetail/$2";
$route["(:any)/k-(:num)"] = "home/promotiondetail/$2";
$route["(:any)/r-(:num)"] = "home/recruitmentdetail/$2";
$route["(doi-tac|partner)"] = "home/partner";
$route["(gioi-thieu|about)"] = "home/contentDetail/4";



$route['default_controller'] = "home";
$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */