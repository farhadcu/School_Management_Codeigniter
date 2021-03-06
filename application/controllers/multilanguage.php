<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');

/*	
 *	@author : Shafayatul Islam Pavel
 *	School Management system
 *	www.bdpavel.com
 */


class Multilanguage extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->database();
		/*cash control*/
		$this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
		$this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	}
	
	function index()
	{
	}
	
	function select_language($language = 'english')
	{
		$this->session->set_userdata('current_language', $language);
		redirect(base_url(), 'refresh');
	}
	function language($language='english')
	{
		$this->load->library('user_agent');
		$this->input->set_cookie('language',$language,'1296000');
		$this->input->set_cookie($cookie);
		if ($this->agent->is_referral())
	    {
	        redirect($this->agent->referrer());
	    }
		else
		{
			redirect(site_url());
		}
	}
	
	
	
}
