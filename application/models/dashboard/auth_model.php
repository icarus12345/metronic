<?php

/*
  Project     : 48c6c450f1a4a0cc53d9585dc0fee742
  Created on  : Mar 16, 2013, 11:29:15 PM
  Author      : Truong Khuong - khuongxuantruong@gmail.com
  Description :
  Purpose of the stylesheet follows.
 */

class auth_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }
    function getuser($_username){
        $query=$this->db
                ->where("ause_username",$_username)
                ->or_where("ause_email",$_username)
                ->get("auth_users");
        $error_number = $this->db->_error_number();
        $error_message = $this->db->_error_message();
        if($error_number!==0){
            $_SESSION['auth_db']['errors'][]=$error_message;
            return null;
        }
        $rs = $query->result();
        if(isset($rs[0]))   {
            return $rs[0];
        }
        return null;
    }
    function getprivileges($_userid){
        $query=$this->db
                ->select("`apri_id`,`apri_name`,`apri_key`,`apri_position`,`aupr_permission`")
                ->from("auth_user_privilege")
                ->join("auth_privileges","aupr_privilege=apri_id")
                ->where(array(
                    "`aupr_user`"=>$_userid,
                    "`apri_status`"=>"true"
                ))
                ->get();
        $error_number = $this->db->_error_number();
        $error_message = $this->db->_error_message();
        if($error_number!==0){
            $_SESSION['auth_db']['errors'][]=$error_message;
            return null;
        }
        $rs = $query->result();
        return $rs;
    }
	function insert_onduplicate_update_aupr($aParamsi,$aUpdate){
        $this->db->on_duplicate_update('auth_users', $aUpdate, $aParamsi); 
        $count = $this->db->affected_rows();
		$error_number = $this->db->_error_number();
        $error_message = $this->db->_error_message();
        if($error_number!==0){
            $_SESSION['auth_db']['errors'][]=$error_message;
            return false;
        }
        if($count>0) return $count;
        return false;
    }
}

?>
