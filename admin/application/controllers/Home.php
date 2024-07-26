<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller{
    
    function __construct()
    {
        parent::__construct();

        //jika tidak ada tiket, maka suruh login
        if(!$this->session->userdata("id_admin")) {
            redirect('/','refresh');
        }
    }
    
    public function index(){
    
        $this->load->model('Mmember');
        $data["jumlah_distrik_member"] = $this->Mmember->jumlah_member_distrik();

        $this->load->view('header');
        $this->load->view('home', $data);
        $this->load->view('footer');
    }
}