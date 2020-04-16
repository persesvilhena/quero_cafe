<?php
class Rede extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('conf');
        $this->load->model('rede_model');
    }



    public function index() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('painel/home');
        $this->load->view('footer');
    }

    public function per() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('rede/per');
        $this->load->view('footer');
    }
    
    public function adaline() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('rede/adaline');
        $this->load->view('footer');
    }

    public function gulosa() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('painel/gulosa');
        $this->load->view('footer');
    }
    
    public function mlp() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('rede/mlp');
        $this->load->view('footer');
    }
    
    public function fuzzy() {
        $this->load->view('header');
        $this->load->view('barra_superior');
        $this->load->view('rede/fuzzy');
        $this->load->view('footer');
    }

    public function gulosa_json() {
        echo $this->painel_model->ver_gulosa()->json;
    }



}
