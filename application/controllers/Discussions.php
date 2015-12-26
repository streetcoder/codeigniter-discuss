<?php
/**
 * Created by StreetCoder.
 * User: ati
 * Date: 12/26/15
 * Time: 5:13 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
class Discussions extends MY_Controller
{

    function __construct() {
        parent::__construct();
        $this->load->helper('string');
        $this->load->library('encrypt');
        //$this->load->model('discussions_model');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
    }

    function index(){

        $this->load->view('layouts/header');
        $this->load->view('layouts/navigation');
        $this->load->view('discussions/view');
        $this->load->view('layouts/footer');

    }

}