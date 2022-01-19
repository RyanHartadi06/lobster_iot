<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Akun extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        belumlogin_admin();
    }
    public function index()
    {
        $data['Pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' =>
        $this->session->userdata('id_pengguna')])->row_array();
        $qq = $data['Pengguna']['id_pengguna'];
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]|matches[konfirmasi]', ['min_length' => 'Password too short']);
        $this->form_validation->set_rules('konfirmasi', 'Konfirmasi password', 'required|trim|min_length[3]|matches[password]');
        if ($this->form_validation->run() == false) {
            $data['Pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' =>
            $this->session->userdata('id_pengguna')])->row_array();
            $qq = $data['Pengguna']['id_pengguna'];
            $data['users'] = $this->db->query("SELECT * FROM pengguna WHERE id_pengguna = '$qq'")->row();
            $this->load->view('admin/user/index', $data);
        } else {
            $nama = $this->input->post('nama');
            $email = $this->input->post('email');
            $no_telp = $this->input->post('no_telp');
            $alamat = $this->input->post('alamat');
            $password = md5($this->input->post('password'));
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['max_size'] = '2048';
            $config['upload_path'] = './uploads/user/';
            $config['encrypt_name'] = TRUE;
            $this->load->library('upload', $config);
            if ($this->upload->do_upload('gambar')) {
                $fotobaru = $this->upload->data('file_name');
                $data = [
                    'nama' => $nama,
                    'email' => $email,
                    'password' => $password,
                    'no_telp' => $no_telp,
                    'foto' =>     $fotobaru,
                    'alamat' => $alamat,
                ];
                $this->db->where('id_pengguna', $qq);
                $this->db->update('pengguna', $data);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Data Berhasil Di Ubah
            </div>');
                redirect('Admin/Akun');
            } else {
                $data = [
                    'nama' => $nama,
                    'email' => $email,
                    'password' => $password,
                    'no_telp' => $no_telp,
                    'alamat' => $alamat,
                ];
                $this->db->where('id_pengguna', $qq);
                $this->db->update('pengguna', $data);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Data Berhasil Di Ubah
            </div>');
                redirect('Admin/Akun');
            }
        }
    }
    public function Pengguna()
    {
        $data['Pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' =>
        $this->session->userdata('id_pengguna')])->row_array();
        $data['user'] = $this->db->query("SELECT * FROM pengguna WHERE status = 2")->result_array();
        $this->load->view('admin/pengguna/index', $data);
    }
    public function detail($id)
    {
        $data['Pengguna'] = $this->db->get_where('pengguna', ['id_pengguna' =>
        $this->session->userdata('id_pengguna')])->row_array();
        $data['users'] = $this->db->query("SELECT * FROM pengguna WHERE id_pengguna = '$id'")->row();
        $this->load->view('admin/pengguna/detail', $data);
    }
    public function on($id)
    {
        $insert = array(
            'is_active' => 1,
        );
        $this->db->where('id_pengguna', $id);
        $this->db->update('pengguna', $insert);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
          Akun berhasil di aktifkan
        </div>');
        redirect('Admin/Akun/detail/' . $id);
    }
    public function off($id)
    {
        $insert = array(
            'is_active' => 2,
        );
        $this->db->where('id_pengguna', $id);
        $this->db->update('pengguna', $insert);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
          Akun berhasil di nonaktifkan
        </div>');
        redirect('Admin/Akun/detail/' . $id);
    }
}
