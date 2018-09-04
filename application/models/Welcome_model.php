<?php

class Welcome_model extends CI_Model
{
  public function get_category()
  {
  	$this->db->select("category_id,category_name");
	$this->db->from("categories");
	$query1=$this->db->get();
	return $query1->result_array();
	
  }

public function getquestions($category)
{
	
	$query=$this->db->get_where('Questions', array('category_id' => $category));

	//$query = $this->db->get();
	
	return $query->result();



}
public function checkans($data){
$cnt=0;
	foreach($data as $val){
		$query=$this->db->get_where('questions', array('answer' => $val))->result_array();
		// print_r($query);
		if(count($query)>0){
			$cnt++;
		}
	}
	return $cnt;
}
}

?>

