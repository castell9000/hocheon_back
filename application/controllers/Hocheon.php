<?php
class Hocheon extends CI_Controller {

  public function select_act(){
      $parameter1= $this->input->post('sort');
      $parameter2= $this->input->post('day');
      $this->load->database();
      $sql="select * from h_activity where sort=? and day=?";
      $query= $this->db->query($sql, array($parameter1,$parameter2));
      $dbResult = $query->result();
      $jsonArr = array("result_status"=>"ok", "result_body"=>$dbResult);
      echo json_encode($jsonArr);
  }

  public function reserve()
  {
        $this->load->database();
        try{
                   $parameter1 = $this->input->post('user_name');
                   $parameter2 = $this->input->post('user_phone');
                   $parameter3 = $this->input->post('act_code');
                   $parameter4 = $this->input->post('act_date');
        } catch(Exception $e) {
          $inputGetErr = array('err_code'=>'001');
          echo json_encode($inputGetErr);
        }
        $data=array('reser_name'=>$parameter1, 'reser_phone'=>$parameter2,'act_code'=>$parameter3,'act_date'=>$parameter4);
        try{
          $str = $this->db->insert('h_reserve',$data);
          if($str==1){
            echo "ok";
           }else {
             echo "fail";
           }
           }catch(Exception $e){
             $insertErr = array('err_code'=>'005');
             echo json_encode($insertErr);
           }
  }

  public function reserve_select(){
    $this->load->database();
    $parameter1 = $this->input->post('user_name');
    $parameter2 = $this->input->post('user_phone');
      $sql="select r.reser_name, r.reser_phone, r.act_date,r.act_code, a.act_name from h_reserve r,
        h_activity a where r.act_code=a.act_code and reser_name=? and reser_phone=?";
      $query = $this->db->query($sql, array($parameter1, $parameter2));
      $dbResult = $query->result();
      $jsonArr = array("result_status"=>"ok", "result_body"=>$dbResult);
      echo json_encode($jsonArr);
  }

  public function reserve_delete(){
    $this->load->database();
    $parameter1 = $this->input->post('user_name');
    $parameter2 = $this->input->post('user_phone');
    $parameter3 = $this->input->post('act_code');
    $sql ="delete from h_reserve where reser_name=? and reser_phone=? and act_code=?";
    $query = $this->db->query($sql, array($parameter1, $parameter2, $parameter3));
    $str=$query;
      if($str==1){
        echo "ok";
      }else{
      echo "error";
      }
  }
}
