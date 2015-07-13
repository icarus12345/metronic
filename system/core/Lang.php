<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2011, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * Language Class
 *
 * @package		CodeIgniter
 * @subpackage	Libraries
 * @category	Language
 * @author		ExpressionEngine Dev Team
 * @link		http://codeigniter.com/user_guide/libraries/language.html
 */
class CI_Language{

    var $language    = array();
    var $is_loaded    = array();
    var $idiom='en';
    var $set;

    var $line;
    var $CI;

    function __construct()
    {
        //parent::__construct();
        if(isset($_SESSION['lang']))$idiom=$_SESSION['lang'];
        //$this->load();
    }

    /**
     * Load a language file
     *
     * @access    public
     * @param    mixed    the name of the language file to be loaded. Can be an array
     * @param    string    the language (english, etc.)
     * @return    mixed
     */
    function load($langfile = null, $idiom = 'en', $return = FALSE)
    {
        // Calling early before CI reformats them
        $this->set = $langfile;
        $this->idiom = $idiom;

        
        if ($idiom == '')
        {
            $CI =& get_instance();
            $deft_lang = $CI->config->item('language');
            $idiom = ($deft_lang == '') ? 'en' : $deft_lang;

            $this->idiom = $idiom;
        }


        $database_lang =  $this->_get_from_db();
        if ( ! empty( $database_lang ) )
        {
            $lang = $database_lang;
        }else{
            show_error('Unable to load the requested language db: '.$langfile);
        }

        if ( ! isset($lang))
        {
            log_message('error', 'Language file contains no data: language/'.$idiom.'/'.$langfile);
            return;
        }

        if ($return == TRUE)
        {
            return $lang;
        }

        $this->is_loaded[] = $langfile;
        $this->language = array_merge($this->language, $lang);
        unset($lang);

        log_message('debug', 'Language file loaded: language/'.$idiom.'/'.$langfile);
        return TRUE;
    }

    /**
     * Load a language from database
     *
     * @access    private
     * @return    array
     */
    private function _get_from_db()
    {
          $CI =& get_instance();

        $CI->db->select   ('*');
        $CI->db->from     ('language');
        $CI->db->where_in('lang_language', array($this->idiom,'en'));
        if(!empty($this->set))$CI->db->where    ('lang_set', $this->set);

        $query = $CI->db->get()->result();
        
        
        
        foreach ( $query as $row )
        {
            if($row->lang_language==$this->idiom){
                $return[$row->lang_set.'_'.$row->lang_key] = $row->lang_text;
                $return[$row->lang_set.'_'.convertUrl($row->lang_key)] = $row->lang_text;
            }
        }
        foreach ( $query as $row )
        {
           if($row->lang_language=='en'){
               if(!isset($return[$row->lang_set.'_'.$row->lang_key])){
                   $return[$row->lang_set.'_'.$row->lang_key] = $row->lang_text;
               }
               if(!isset($return[$row->lang_set.'_'.convertUrl($row->lang_key)])){
                   $return[$row->lang_set.'_'.convertUrl($row->lang_key)] = $row->lang_text;
               }
           }
        }
        unset($CI, $query);
        return $return;
    }
}

class CI_Lang {

	/**
	 * List of translations
	 *
	 * @var array
	 */
	var $language	= array();
	/**
	 * List of loaded language files
	 *
	 * @var array
	 */
	var $is_loaded	= array();

	/**
	 * Constructor
	 *
	 * @access	public
	 */
	function __construct()
	{
		log_message('debug', "Language Class Initialized");
	}

	// --------------------------------------------------------------------

	/**
	 * Load a language file
	 *
	 * @access	public
	 * @param	mixed	the name of the language file to be loaded. Can be an array
	 * @param	string	the language (english, etc.)
	 * @param	bool	return loaded array of translations
	 * @param 	bool	add suffix to $langfile
	 * @param 	string	alternative path to look for language file
	 * @return	mixed
	 */
	function load($langfile = '', $idiom = 'english', $return = FALSE, $add_suffix = TRUE, $alt_path = '')
	{
		$langfile = str_replace('.php', '', $langfile);

		if ($add_suffix == TRUE)
		{
			$langfile = str_replace('_lang.', '', $langfile).'_lang';
		}

		$langfile .= '.php';

		if (in_array($langfile, $this->is_loaded, TRUE))
		{
			return;
		}

		$config =& get_config();

		if ($idiom == '')
		{
			$deft_lang = ( ! isset($config['language'])) ? 'english' : $config['language'];
			$idiom = ($deft_lang == '') ? 'english' : $deft_lang;
		}

		// Determine where the language file is and load it
		if ($alt_path != '' && file_exists($alt_path.'language/'.$idiom.'/'.$langfile))
		{
			include($alt_path.'language/'.$idiom.'/'.$langfile);
		}
		else
		{
			$found = FALSE;

			foreach (get_instance()->load->get_package_paths(TRUE) as $package_path)
			{
				if (file_exists($package_path.'language/'.$idiom.'/'.$langfile))
				{
					include($package_path.'language/'.$idiom.'/'.$langfile);
					$found = TRUE;
					break;
				}
			}

			if ($found !== TRUE)
			{
				show_error('Unable to load the requested language file: language/'.$idiom.'/'.$langfile);
			}
		}


		if ( ! isset($lang))
		{
			log_message('error', 'Language file contains no data: language/'.$idiom.'/'.$langfile);
			return;
		}

		if ($return == TRUE)
		{
			return $lang;
		}

		$this->is_loaded[] = $langfile;
		$this->language = array_merge($this->language, $lang);
		unset($lang);

		log_message('debug', 'Language file loaded: language/'.$idiom.'/'.$langfile);
		return TRUE;
	}

	// --------------------------------------------------------------------

	/**
	 * Fetch a single line of text from the language array
	 *
	 * @access	public
	 * @param	string	$line	the language line
	 * @return	string
	 */
	function line($line = '')
	{
		$value = ($line == '' OR ! isset($this->language[$line])) ? FALSE : $this->language[$line];

		// Because killer robots like unicorns!
		if ($value === FALSE)
		{
			log_message('error', 'Could not find the language line "'.$line.'"');
		}

		return $value;
	}
	function lines()
	{
		return $this->language;
	}
}
// END Language Class

/* End of file Lang.php */
/* Location: ./system/core/Lang.php */
