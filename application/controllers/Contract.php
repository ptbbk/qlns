<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Contract extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh Sách Hợp Đồng';
        $this->middle = 'level/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Hợp Đồng';
        $this->middle = 'level/add';
        $this->layout();
    }
}