<?php
/**
 * Created by StreetCoder.
 * User: ati
 * Date: 12/28/15
 * Time: 10:25 AM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends MY_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->helper('string');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('Admin_model', 'admin');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
    }

    public function index(){
        if ($this->session->userdata('logged_in') == FALSE) {
            redirect('admin/login');
        }

        redirect('admin/dashboard');
    }

    public function login(){

        $this->form_validation->set_rules('usr_email', $this->lang->line('admin_login_email'), 'required|min_length[1]|max_length[125]');
        $this->form_validation->set_rules('usr_password', $this->lang->line('admin_login_password'), 'required|min_length[1]|max_length[25]');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layouts/header_login');
            $this->load->view('layouts/navigation');
            $this->load->view('admin/login');
            $this->load->view('layouts/footer');
        } else {
            $usr_email = $this->input->post('usr_email');
            $usr_password = $this->input->post('usr_password');

            $query = $this->admin->does_user_exist($usr_email);

            //echo '<pre>'.print_r($query,1).'</pre>';
            if ($query->num_rows() == 1) { // One matching row found
                foreach ($query->result() as $row) {

                    if (password_verify($usr_password, $row->usr_hash)) {
                        echo 'Password is valid!';

                        $data = array(
                            'usr_id' => $row->usr_id,
                            'usr_email' => $row->usr_email,
                            'logged_in' => TRUE
                        );

                        $this->session->set_userdata('login_data',$data);
                        redirect('admin/dashboard');

                    } else {
                        $page_data['login_fail'] = true;
                        $this->load->view('layouts/header_login');
                        $this->load->view('layouts/navigation');
                        $this->load->view('admin/login', $page_data);
                        $this->load->view('layouts/footer');
                    }
                }
            }
            else{
                echo "User does not exist!";
            }
        }

        /*$this->load->view('layouts/header_login');
        $this->load->view('layouts/navigation');
        $this->load->view('admin/login');
        $this->load->view('layouts/footer');*/
    }

    public function dashboard(){
        echo "Welcome on board";

        echo $this->session->userdata('usr_email');
        //phpinfo();
        //print_r($this->session->has_userdata('login_data'));
        //print_r($_SESSION);

        /*$data = array(
            'cart_id' => 5,
            'cart_email' => 'proshimul@yahoo.com',
            'cart_in' => FALSE
        );

        $this->session->set_userdata('is_cart',$data);

        $this->session->unset_userdata('is_cart');

        echo '<pre>'.print_r($_SESSION,1).'</pre>';*/
        //print_r($_SESSION);


        //print_r($this->session->has_userdata('is_cart'));


    }

}