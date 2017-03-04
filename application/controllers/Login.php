<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
    }

    public function index()
    {        
        $this->load->view('login/index');
    }
    
    public function signin()
    {
        $alert = '<div class="alert alert-danger alert-dismissible fade in" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                  </button><strong>Đăng nhập thất bại!</strong> Nếu bạn không có nghĩa vụ ở đây làm ơn thoát khỏi trang.</div>';
        $this->session->set_userdata(array('alert'=> $alert));
        redirect($this->config->item('base_url').'index.php/login/index', 'refresh');
    }
    
    public function lostpass()
    {
        $this->load->helper('url');
        redirect($this->config->item('base_url').'index.php/login/index', 'refresh');
    }
}