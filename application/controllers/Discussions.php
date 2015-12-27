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
        $this->load->model('Discussions_model', 'discuss');
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
    }

    public function index() {

        if ($this->uri->segment(3)) {
            $filter = $this->uri->segment(4);
            $direction = $this->uri->segment(5);
            $page_data['dir'] = $this->uri->segment(5);
        } else {
            $filter = null;
            $direction = null;
            $page_data['dir'] = 'ASC';
        }

        $page_data['query'] = $this->discuss->fetch_discussions($filter,$direction);

        $this->load->view('layouts/header');
        $this->load->view('layouts/navigation');
        $this->load->view('discussions/view', $page_data);
        $this->load->view('layouts/footer');

    }

    public function create(){

        $this->form_validation->set_rules('usr_name', $this->lang->line('discussion_usr_name'), 'required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('usr_email', $this->lang->line('discussion_usr_email'), 'required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('ds_title', $this->lang->line('discussion_ds_title'), 'required|min_length[1]|max_length[255]');
        $this->form_validation->set_rules('ds_body', $this->lang->line('discussion_ds_body'), 'required|min_length[1]|max_length[5000]');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layouts/header');
            $this->load->view('layouts/navigation');
            $this->load->view('discussions/create');
            $this->load->view('layouts/footer');
        } else {
            $data = array('usr_name' => $this->input->post('usr_name'),
                'usr_email' => $this->input->post('usr_email'),
                'ds_title' => $this->input->post('ds_title'),
                'ds_body' =>  $this->input->post('ds_body')
            );

            if ($ds_id = $this->discuss->create($data)) {
                redirect('comments/index/'.$ds_id);
            } else {
                // error
                // load view and flash sess error
            }
        }

        /*$this->load->view('layouts/header');
        $this->load->view('layouts/navigation');
        $this->load->view('discussions/create');
        $this->load->view('layouts/footer');*/
    }

}