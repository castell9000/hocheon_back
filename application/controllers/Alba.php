<?php
class Alba extends CI_Controller {

  public function select(){
      $this->load->database();
      $sql="select * from a_write";
      $query= $this->db->query($sql);
      $dbResult = $query->result();
      $jsonArr = array("result_msg"=>"ok", "result_body"=>$dbResult);
      echo json_encode($jsonArr);
  }

  public function write()
  {        
    $this->load->database();
    $name = $this->input->post("name");
    $content = $this->input->post("content");
    $sql = "INSERT INTO a_write (w_name, w_contents, w_time) VALUES (?,?,sysdate())";
    $result = $this->db->query($sql, array($name,$content));
    if($result==1){
      $reArr = array("result_msg"=>"ok");
      echo json_encode($reArr);
    }else {
      $reArr = array("result_msg"=>"fail");
      echo json_encode($reArr);
    }
  }
  public function delete(){
    $this->load->database();
    $id = $this->input->get("id");
    $result = $this->db->delete('a_write', array('w_id' => $id));
    if($result==1){
     $reArr = array("result_msg"=>"ok");
     echo json_encode($reArr);
    }else {
      $reArr = array("result_msg"=>"fail");
      echo json_encode($reArr);
    } 
  }
}
