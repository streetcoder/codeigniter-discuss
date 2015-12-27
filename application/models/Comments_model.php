<?php
/**
 * Created by StreetCoder.
 * User: ati
 * Date: 12/27/15
 * Time: 2:16 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Comments_model extends CI_Model {

    public function __construct(){
        parent::__construct();
    }

    public function findComments($ds_id) {
        $query = "SELECT * FROM `comments`, `discussions`, `users`
                  WHERE `discussions`.`ds_id` = ?
                   AND `comments`.`ds_id` = `discussions`.`ds_id`
                   AND `comments`.`usr_id` = `users`.`usr_id`
                   AND `comments`.`cm_is_active` = '1'
                   ORDER BY `comments`.`cm_created_at` DESC " ;

        $result = $this->db->query($query, array($ds_id));

        if ($result) {
            return $result;
        } else {
            return false;
        }
    }

    /*
     * @todo: need to complete entire this section
     * */
    public function newComment($data){

        //$comment_data = $data;
        $comment_data = array('cm_body' => $data['cm_body'],
            'ds_id' => $data['ds_id'],
            'cm_is_active' => '1',
            'usr_id' => 2);

        $this->db->insert('comments',$comment_data);
    }

}