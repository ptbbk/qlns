<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Level extends MY_Controller {

    public function index()
    {              
        $this->data['title'] = 'Danh Sách Trình Độ';
        $this->middle = 'level/index';
        $this->layout();
    }
    
    public function add()
    {
        $this->data['title'] = 'Thêm Mới Trình Độ';
        $this->middle = 'level/add';
        $this->layout();
    }
}