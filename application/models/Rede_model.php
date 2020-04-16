<?php

class Rede_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }


    function ver_per_treino(){
        $this->db->select('*');
        $this->db->from('iris_treino');
        return $this->db->get()->result();
    }
    function ver_per_teste(){
        $this->db->select('*');
        $this->db->from('iris_teste');
        return $this->db->get()->result();
    }


    


}
