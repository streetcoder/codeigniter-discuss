<?php
/**
 * Created by StreetCoder.
 * User: ati
 * Date: 12/28/15
 * Time: 10:47 AM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin_model extends CI_Model{

    public function __construct(){
        parent::__construct();
    }

    function does_user_exist($email) {
        $this->db->where('usr_email', $email);
        $query = $this->db->get('users');
        return $query;
    }
}