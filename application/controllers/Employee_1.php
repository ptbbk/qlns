<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Employee extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh Sách Nhân Viên';
        $this->middle = 'employee/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Nhân Viên';
        $this->middle = 'employee/add';
        $this->layout();
    }
}