<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Import extends MY_Controller {

    public function employee()
    {
        $this->data['title'] = 'Import Dữ Liệu Nhân Viên';
        $this->middle = 'import/employee';
        $this->layout();
    }
    
    public function flightcontroltime()
    {
        $this->data['title'] = 'Import Giờ Điều Hành Bay';
        $this->middle = 'import/flightcontroltime';
        $this->layout();
    }
}