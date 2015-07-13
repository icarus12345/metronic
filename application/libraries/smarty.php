<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * Smarty Class
 *
 * @package		CodeIgniter
 * @subpackage	Libraries
 * @category	Smarty
 * @author		Kepler Gelotte
 * @link		http://www.coolphptools.com/codeigniter-smarty
 */
require_once( APPPATH . 'third_party/smarty/SmartyBC.class.php' );
class CI_Smarty extends SmartyBC {
    var $lang = '';
    function CI_Smarty() {
        parent::SmartyBC();
        $this->initSmarty();
    }

    function initSmarty() {
        $this->left_delimiter = "[{";
        $this->right_delimiter = "}]";
        $this->compile_dir = APPPATH . "templates_c";
        $this->template_dir = APPPATH . "templates";
        $this->caching = 2; //0 = no caching; 1 = use class cache_lifetime value; 2 = use cache_lifetime in cache file
        $this->cache_dir = APPPATH . 'cache';
        $this->cache_lifetime = 60;
        $this->assign('APPPATH', APPPATH);
        $this->assign('BASEPATH', BASEPATH);
        
    }

    function __construct() {
        parent::__construct();
        $this->initSmarty();
        // Assign CodeIgniter object by reference to CI
        if (method_exists($this, 'assignByRef')) {
            $ci = & get_instance();
            $this->assignByRef("ci", $ci);
        }
    }

    /**
     *  Parse a template using the Smarty engine
     *
     * This is a convenience method that combines assign() and
     * display() into one step. 
     *
     * Values to assign are passed in an associative array of
     * name => value pairs.
     *
     * If the output is to be returned as a string to the caller
     * instead of being output, pass true as the third parameter.
     *
     * @access	public
     * @param	string
     * @param	array
     * @param	bool
     * @return	string
     */
    function view($template, $data = array(), $return = FALSE) {
        if (substr_count($template, ".tpl") == 0) {
            $template = $template . '.tpl';
        }
        if(!empty($data)) foreach ($data as $key => $val) {
            $this->assign($key, $val);
        }
        $fetch = $this->fetch($template);
        if ($return == FALSE) {
            $CI = & get_instance();
            if (method_exists($CI->output, 'set_output')) {
                $CI->output->set_output($fetch);
            } else {
                $CI->output->final_output = $fetch;
            }
            return;
        } else {
            return $fetch;
        }
    }

    function display($html) {
        if (substr_count($html, ".") == 0) {
            $filePath = APPPATH . "templates/$html.tpl";
        } else {
            $filePath = APPPATH . "templates/$html";
        }
        if (file_exists($filePath)) {
            parent::display($filePath);
        } else {
            show_error('Unable to load the requested file: ' . $filePath);
        }
    }

}

// END Smarty Class
