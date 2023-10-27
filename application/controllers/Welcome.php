<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
    }

	public function index()
	{
        $data['title']= 'Login Page';
		$this->load->view('_templates/auth_header');
		$this->load->view('auth/login');
		$this->load->view('_templates/auth_footer');
	}}