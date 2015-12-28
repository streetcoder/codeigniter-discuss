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

        if($this->session->has_userdata('login_data') == 1 &&
            $this->session->userdata('logged_in') == FALSE){
            redirect('admin/login');
        }

        $page_data['comment_query'] = $this->admin->dashboard_fetch_comments();
        $page_data['discussion_query'] = $this->admin->dashboard_fetch_discussions();

        $this->load->view('layouts/header_login');
        $this->load->view('layouts/navigation');
        $this->load->view('admin/dashboard',$page_data);
        $this->load->view('layouts/footer');

    }

    public function update_item() {
        if($this->session->has_userdata('login_data') == 1 &&
            $this->session->userdata('logged_in') == FALSE){
            redirect('admin/login');
        }

        if ($this->uri->segment(4) == 'allow') {
            $is_active = 1;
        } else {
            $is_active = 0;
        }

        if ($this->uri->segment(3) == 'ds') {
            $result = $this->admin->update_discussions($is_active, $this->uri->segment(5));
        } else {
            $result = $this->admin->update_comments($is_active, $this->uri->segment(5));
        }

        redirect('admin');
    }


}