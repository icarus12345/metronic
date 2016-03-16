<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*!
* HybridAuth
* http://hybridauth.sourceforge.net | http://github.com/hybridauth/hybridauth
* (c) 2009-2012, HybridAuth authors | http://hybridauth.sourceforge.net/licenses.html
*/

// ----------------------------------------------------------------------------------------
//	HybridAuth Config file: http://hybridauth.sourceforge.net/userguide/Configuration.html
// ----------------------------------------------------------------------------------------

$config =
	array(
		// set on "base_url" the relative url that point to HybridAuth Endpoint
		'base_url' => '/hauth/endpoint',

		"providers" => array (
			// openid providers
			"OpenID" => array (
				"enabled" => true
			),

			"Yahoo" => array (
				"enabled" => true,
				"keys"    => array ( "id" => "", "secret" => "" ),
			),

			"AOL"  => array (
				"enabled" => true
			),

			"Google" => array (
				"enabled" => true,
				"keys"    => array ( 
					"id" => "691346579027-erj1al3tavepadjv38bsot6pq1cuthge.apps.googleusercontent.com", 
					"secret" => "-6L9P4IIWQ4PSbdmXuM0gyAo" 
				),
			),

			"Facebook" => array (
				"enabled" => true,
				"keys"    => array ( 
					"id" => "1695423720698818", 
					"secret" => "fba8b9b975f163ba6f81c397fad2a523" 
				),
			),

			"Twitter" => array (
				"enabled" => true,
				"keys"    => array ( 
					"key" => "kipfI9Rvj20s2AtxHUAM0expB", 
					"secret" => "ssy24otOIEs7J6jPcXl6gbFKVbMju1GT3uFdpoatzRMv5hcYLj" 
				)
			),

			// windows live
			"Live" => array (
				"enabled" => true,
				"keys"    => array ( "id" => "", "secret" => "" )
			),

			"MySpace" => array (
				"enabled" => true,
				"keys"    => array ( "key" => "", "secret" => "" )
			),

			"LinkedIn" => array (
				"enabled" => true,
				"keys"    => array ( 
					"key" => "75gebi8i6ftcwn", 
					"secret" => "YHv8pdfDNpiDbPa9" 
				)
			),

			"Foursquare" => array (
				"enabled" => true,
				"keys"    => array ( "id" => "", "secret" => "" )
			),
		),

		// if you want to enable logging, set 'debug_mode' to true  then provide a writable file by the web server on "debug_file"
		"debug_mode" => (ENVIRONMENT == 'development'),

		"debug_file" => APPPATH.'/logs/hybridauth.log',
	);


/* End of file hybridauthlib.php */
/* Location: ./application/config/hybridauthlib.php */