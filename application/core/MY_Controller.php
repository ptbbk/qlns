<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class MY_Controller extends CI_Controller 
 { 
   //set the class variable.
    protected $template  = array();
    protected $data      = array();
    //Load layout    
    public function __construct() {
        parent::__construct();
        $this->data['css'] = array( 'css/bootstrap.min.css', 
                                    'fonts/css/font-awesome.min.css',
                                    'css/animate.min.css', 
                                    'css/custom.css', 
                                    'css/icheck/flat/green.css',
                                    'js/datatables/jquery.dataTables.min.css', 
                                    'js/datatables/buttons.bootstrap.min.css',
                                    'js/datatables/fixedHeader.bootstrap.min.css', 
                                    'js/datatables/responsive.bootstrap.min.css', 
                                    'js/datatables/scroller.bootstrap.min.css');
        $this->data['js'] = array('js/jquery.nestable.js',
									'js/bootstrap.min.js',
                                    'js/progressbar/bootstrap-progressbar.min.js', 
                                    'js/nicescroll/jquery.nicescroll.min.js', 
                                    'js/icheck/icheck.min.js', 
                                    'js/custom.js', 
                                    'js/datatables/jquery.dataTables.min.js', 
                                    'js/datatables/dataTables.bootstrap.js', 
                                    'js/datatables/dataTables.buttons.min.js', 
                                    'js/datatables/buttons.bootstrap.min.js', 
                                    'js/datatables/jszip.min.js', 
                                    'js/datatables/pdfmake.min.js',
                                    'js/datatables/vfs_fonts.js',
                                    'js/datatables/buttons.html5.min.js',
                                    'js/datatables/buttons.print.min.js', 
                                    'js/datatables/dataTables.fixedHeader.min.js',
                                    'js/datatables/dataTables.keyTable.min.js', 
                                    'js/datatables/dataTables.responsive.min.js',
                                    'js/datatables/responsive.bootstrap.min.js', 
                                    'js/datatables/dataTables.scroller.min.js',
                                    'js/pace/pace.min.js');
        $this->setMenu();
    }
    public function layout() {
                
        // making temlate and send data to view.
        $this->data['base_url'] = 
        $this->template['left']   = $this->load->view('layout/left', $this->data, true);
        $this->template['topnav']   = $this->load->view('layout/topnav', $this->data, true);
        $this->template['middle'] = $this->load->view($this->middle, $this->data, true);
        $this->template['footer'] = $this->load->view('layout/footer', $this->data, true);
        $this->load->view('layout/index', $this->template);
    }
    
    public function setMenu(){
        $this->data['menus'] = array(
                    array('Bảng Điều Khiển',
                          'home',
                          'index.php/dashboard/index'),
                    array('Nhân Sự',
                          'users',
                          array(
                                array("Nhân Viên","index.php/employee/index"), 
                                array("Nhân Viên Mới","index.php/employee/add"),
                                array("Khối Chức Danh & Chức Danh","index.php/Regency/index"),
                                array("Đơn Vị Công Tác","index.php/department/index"),
                                
                                array("Trình Độ","index.php/level/index"),
                                array("Thêm Mới Trình Độ","index.php/level/add"),
                                array("Loại HĐLĐ","index.php/contract/index"),
                                array("Thêm Mới HĐLĐ","index.php/contract/add"),
                          )
                    ),
                    array('Huấn Luyện & Đào Tạo',
                          'graduation-cap',
                          array(
                                array("Loại Năng Định & Năng Định","index.html"),
                                array("Danh Sách Năng Định","index.html"),
                                array("Danh Sách Khóa Huấn Luyện","index.php/trainning/index"),
                                array("Thêm Mới Khóa Huấn Luyện","index.php/trainning/add"),
                                array("Danh Sách Huấn Luyện","index.html"),
                                array("Khóa Kiểm Tra TA","index.html"),
                                array("Danh Sách Kiểm Tra TA","index.html")
                          )
                    ),
                    array('Kỷ Luật & Khen Thưởng',
                          'star-half-o',
                          array(
                                array("Loại KTKL","index.html"),
                                array("Danh Sách KTKL","index.html")
                          )
                    ),
                    array('Tiền Lương',
                          'money',
                          array(
                                array("Giờ ĐHB","index.html"),
                                array("Đơn Giá ĐHB","index.html"),
                                array("Thuế GTGT","index.html"),
                                array("BHYT & BHXH","index.html"),
                          )
                    ),
                    array('Quản Trị Hệ Thống',
                          'male',
                          array(
                                array("Người Dùng","index.html"),
                                array("Lịch Sử","index.html"),
                          )
                    ),
                    array('Import Dữ Liệu',
                          'caret-square-o-down',
                          array(
                                array("Người Dùng","index.php/import/employee"),
                                array("Giờ Điều Hành Bay / Tháng","index.php/import/flightcontroltime"),
                          )
                    )
        );
    }
}