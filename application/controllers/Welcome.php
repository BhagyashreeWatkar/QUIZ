<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function index()
	{
		$this->load->model('welcome_model');
		$data=$this->welcome_model->get_category();
	  $this->load->view('home_page',array("a"=>$data));
	}
	public function quiz_display()
	{
		$category = $this->input->post('category','');
		//$ans = $this->input->post('category_id');
		//print_r($ans);
                // print_r($category);
		$this->load->model('welcome_model');
		$this->data['questions']=$this->welcome_model->getquestions($category);
		$this->data['id']=$category;

		$this->load->view('question_view',$this->data);
	}
	public function result_display()
	{
		$id=$this->input->post('qid');
		$this->load->model('welcome_model');
		// print_r($_POST);
		$this->data['checks'] = array(
		
			$_POST
		 );

		$outof = count($_POST) - 1;
		// echo $outof;
		array_pop($_POST);
		// print_r($_POST);

		$re = $this->welcome_model->checkans($_POST);
		// echo $re;
		// exit;
		$this->load->view('result_view1',array("x"=>$re,"y"=>$outof));

	}

	

	
}
