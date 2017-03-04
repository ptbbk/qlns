<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard extends MY_Controller {

    public function index()
    {
        $this->data['title'] = 'Bảng Điều Khiển';
        $this->middle = 'dashboard/index';
        $this->layout();
    }
}