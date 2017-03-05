<?php class MY_Regency_model extends CI_Model {
        public function __construct()
        {
               $this->load->database();
                // Your own constructor code
        }

        public function get_group_of_regency()
        {
                $query_khoichucdanh = $this->db->query('select * from khoichucdanh');
                
                return $query_khoichucdanh->result();
        }
         public function get_regency()
         {
         $query_chucdanh = $this->db->query(
                 'select '
                 . 'a.id,'
                 . 'a.id_NguoiDung,'
                 . 'a.ten_chuc_danh,'
                 . 'a.he_so_chuc_danh,'
                 . 'a.thoi_gian_tao, '
                 . 'b.ten_khoi '
                 . 'from chucdanh a, khoichucdanh b '
                 . 'where a.id_KhoiChucDanh=b.id');
         return $query_chucdanh->result();
         }
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

