<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Department extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh Sách Đơn Vị Công Tác';
        $this->middle = 'department/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Đơn Vị Công Tác';
        $this->middle = 'department/add';
        $this->layout();
    }
}