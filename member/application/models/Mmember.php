<?php

class Mmember extends CI_Model{

    function tampil(){
    //melakukan query
    $q = $this->db->get("member");

    //pecah ke array
    $d = $q->result_array();

    return $d;
    }

    function detail($id_member) {
        $this->db->where('id_member', $id_member);
        $q = $this->db->get('member');
        $d = $q->row_array();

        return $d;
    }

    function jumlah_member_distrik(){
        $q = $this->db->query("SELECT COUNT(*) as jumlah, nama_distrik_member FROM `member` GROUP BY nama_distrik_member");
        $d = $q->result_array();
        return $d;
    }

    function login($inputan) {
        $email_member = $inputan['email_member'];
        $password_member = $inputan['password_member'];
        $password_member = sha1($password_member);

        //cek ke database
        $this->db->where('email_member', $email_member);
        $this->db->where('password_member', $password_member);
        $q = $this->db->get('member');
        $cekmember = $q->row_array();

        //jika tidak kosong, maka ada
        if (!empty($cekmember)) {
            //membuat tiket yang dipakai selama keliling apliaski
            $this->session->set_userdata("id_member", $cekmember["id_member"]);
            $this->session->set_userdata("email_member", $cekmember["email_member"]);
            $this->session->set_userdata("nama_member", $cekmember["nama_member"]);
            $this->session->set_userdata("alamat_member", $cekmember["alamat_member"]);
            $this->session->set_userdata("wa_member", $cekmember["wa_member"]);
            $this->session->set_userdata("kode_distrik_member", $cekmember["kode_distrik_member"]);
            $this->session->set_userdata("nama_distrik_member", $cekmember["nama_distrik_member"]);
            return "ada";
        } else {
            return "ga ada";
        }
    }

    function ubah($inputan, $id_member) {

        //jika tidak kosong password, maka enkripsi
        if (!empty($inputan["password_member"])) {
            $inputan['password_member'] = sha1($inputan['password_member']);
        } else {
            unset($inputan['password_member']);
        }

        $this->db->where('id_member', $id_member);
        $this->db->update('member', $inputan);

        //karena akun member telah diubah maka tiket harus dibuat baru

        //dapatkan dulu data member yang telah diupdate
        $this->db->where('id_member', $id_member);
        $q = $this->db->get('member');
        $cekmember = $q->row_array();

        //buat tiket lagi
        $this->session->set_userdata("id_member", $cekmember["id_member"]);
        $this->session->set_userdata("email_member", $cekmember["email_member"]);
        $this->session->set_userdata("nama_member", $cekmember["nama_member"]);
        $this->session->set_userdata("alamat_member", $cekmember["alamat_member"]);
        $this->session->set_userdata("wa_member", $cekmember["waember"]);
        $this->session->set_userdata("kode_distrik_member", $cekmember["kode_distrikma_member"]);
        $this->session->set_userdata("nama_distrik_member", $cekmember["nama_distrikma_member"]);
    }

    function register($m){
        $this->db->insert('member',$m);
    }
}