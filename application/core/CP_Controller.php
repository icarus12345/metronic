<?php

class CP_Controller extends Core_Controller {

    //put your code here
    function __construct($table = '', $prefix = '', $id = 'id') {
        parent::__construct($table, $prefix, $id);
        $this->smarty->caching = 0;
        
    }

    protected function privilege() {
        $this->privilege->aupr_permission = 0;
        if (
                !!array_intersect(array('Administrator', 'Admin', 'User', 'CP'), $this->authoritys)
        ) {
            $this->privilege->aupr_permission = 777;
            return true;
        }
        return false;
    }

    function privilege_view() {
        $this->privilege->aupr_permission = 0;
        if (
                !!array_intersect(array('View'), $this->authoritys)
        ) {
            $this->privilege->aupr_permission = 755;
            return true;
        }
        if (
                !!array_intersect(array('Administrator', 'Admin', 'User', 'CP'), $this->authoritys)
        ) {
            $this->privilege->aupr_permission = 777;
            return true;
        }
        return false;
    }

}

?>
