<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Regency extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh sách khối chức danh và chức danh';
        $this->load->model('MY_Regency_model');
        $this->data['query_khoichucdanh'] = $this->MY_Regency_model->get_group_of_regency();
        $this->data['query_chucdanh'] = $this->MY_Regency_model->get_regency();
        $this->middle = 'regency/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Nhân Viên';
        $this->middle = 'employee/add';
        $this->layout();
    }
    

}