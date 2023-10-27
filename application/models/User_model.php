<?php
class User_model extends CI_Model
{
    public function get_user_by_email($email)
    {
        $this->load->library('form_validation');    }
}