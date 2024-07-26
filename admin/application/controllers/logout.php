<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {

    public function index()
    {
        $this->session->unset_userdata("id_admin");
        $this->session->unset_userdata("username");
        $this->session->unset_userdata("nama");

        //redirect ke halaman login
        $this->session->set_flashdata('pesan_sukses', 'Anda telah Logout');
        redirect('/','refresh');
    }
}
?>