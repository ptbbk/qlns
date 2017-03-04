<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Trainning extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh Sách Huấn Luyện';
        $this->middle = 'trainning/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Khóa Huấn Luyện';
        $this->middle = 'trainning/add';
        $this->layout();
    }
}