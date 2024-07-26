<?php
class Slider extends CI_Controller {

    function __construct()
    {
        parent::__construct();

        //jika tidak ada tiket, maka suruh login
        if(!$this->session->userdata("id_admin")) {
            redirect('/','refresh');
        }
    }

    function index() {
        
        //panggil mode Mslider
        $this->load->model("Mslider");

        $data ["slider"] = $this->Mslider->tampil();

        $this->load->view("header");
        $this->load->view("slider_tampil", $data);
        $this->load->view("footer");
    }

    function tambah(){

        //mendapatkan inputan dari formulir pakai $inputan = $this->input->post();
        $inputan = $this->input->post();

        //form validation username dan password wajib diisi
		$this->form_validation->set_rules("caption_slider", "Caption slider","required");
		
		//atur pesan dalam b.indo
		$this->form_validation->set_message("required", "%s wajib diisi");

		//pakai validasinya
		if($this->form_validation->run()==TRUE) {

            //panggil model slider
            $this->load->model('Mslider');
            //jalankan fungsi simpan()
            $this->Mslider->simpan($inputan);

            //pesan dilayar
            $this->session->set_flashdata('pesan_sukses', 'Data slider tersimpan');

            //redirect ke gitur slider utk tampil slider
            redirect('slider','refresh');
        }

        $this->load->view("header");
        $this->load->view("slider_tambah");
        $this->load->view("footer");
    }

    function hapus($id_slider) {
        //panggil model Mslider
        $this->load->model('Mslider');

        //jalankan fungsi hapus
        $this->Mslider->hapus($id_slider);

        //pesan dilayar
        $this->session->set_flashdata('pesan_sukses', 'slider telah terhapus');

        //redirect ke slider utk tampil data
        redirect('slider', 'refresh');
    }

    function edit($id_slider){

        //1. tampilkan dulu slider lama
        $this->load->model("Mslider");
        $data['slider'] = $this->Mslider->detail($id_slider);

        //2. baru mikir ngubah data
        $inputan = $this->input->post();

        //form validation username dan password wajib diisi
		$this->form_validation->set_rules("caption_slider", "Caption slider","required");
		
		//atur pesan dalam b.indo
		$this->form_validation->set_message("required", "%s wajib diisi");

        //jika ada inputan
        if ($this->form_validation->run()==TRUE){
            //jalankan fungsi edit()
            $this->Mslider->edit($inputan, $id_slider);

            //pesan
            $this->session->set_flashdata('pesan_sukses', 'slider telah diubah');

            //redirect
            redirect('slider', 'refresh');
        }

        $this->load->view("header");
        $this->load->view("slider_edit", $data);
        $this->load->view("footer");
    }

}