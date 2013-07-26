<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Streamer_equipment extends Admin_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('mdl_streamer_equipment');
    }

    function index() {
        redirect('streamer_equipment/leadin');
    }

    function leadin(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function front_end_section(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function section(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function module(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function tail_end_section(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function bird(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function srd(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

    function slip_ring(){
        $this->layout->buffer('main_content', 'streamer_equipment/index');
        $this->layout->render('layout_master');
    } 

}

?>