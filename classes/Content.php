<?php
require_once('../config.php');
Class Content extends DBConnection {
	private $settings;
	public function __construct(){
		global $_settings;
		$this->settings = $_settings;
		parent::__construct();
	}
	public function __destruct(){
		parent::__destruct();
	}
	public function update(){
		extract($_POST);
		$content_file="../".$file.".html";
		$update = file_put_contents($content_file, $content);
		if($update){
			return json_encode(array("status"=>"success", "message"=>"Le contenu de ".ucfirst($file)." a été mis à jour avec succès"));
			$this->settings->set_flashdata("success",ucfirst($file)." Le contenu est mis à jour avec succès");
			exit;
		}
	}
	public function service(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k,array('id','description','old_file'))){
				if(!empty($data)) $data .= ", ";
				$data .= "`$k` = '$v'";
			}
		}
				if(!empty($data)) $data .= ", ";
				$data .= "`description` = '".addslashes(htmlentities($description))."'";
		if(isset($_FILES['img']) && !empty($_FILES['img']['tmp_name'])){
			$fname = 'uploads/'.time().'_'.$_FILES['img']['name'];
			$move = move_uploaded_file($_FILES['img']['tmp_name'],base_app.$fname);
			if($move){
				$data .=" , `file_path` = '{$fname}' ";
			}
		}
		if(empty($id)){
			$sql ="INSERT INTO services set $data";
		}else{
			$sql ="UPDATE services set $data where id = {$id}";
		}
		$save = $this->conn->query($sql);
		$action = empty($id) ? "ajouté":"mis à jour";
		if($save){
			if(isset($move) && $move && !empty($old_file)){
				if(is_file(base_app.$old_file))
					unlink(base_app.$old_file);
			}
			$resp['status']='success';
			$resp['message']= "Détails du service ".$action." avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
			
		}else{
			$resp['status']='failed';
			$resp['error']= $this->conn->error;
			$resp['message']= "Erreur : ".$sql;
		}
		return json_encode($resp);
		exit;
	}
	public function service_delete(){
		extract($_POST);
		$fpath = $this->conn->query("SELECT file_path FROM services where id = $id")->fetch_array()['file_path'];
		$qry = $this->conn->query("DELETE FROM services where id = $id");
		if($qry){
			if(is_file(base_app.$fpath))
					unlink(base_app.$fpath);
			$resp['status']='success';
			$resp['message']= "Détails du service supprimé avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
		}else{
			$resp['status']='Failed';
			$resp['error']= $this->conn->error;
			$resp['err_msg'] = "La suppression des données a échoué";
		}
		return json_encode($resp);
	}

	public function testimonial(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k,array('id','message','old_file'))){
				if(!empty($data)) $data .= ", ";
				$data .= "`$k` = '$v'";
			}
		}
				if(!empty($data)) $data .= ", ";
				$data .= "`message` = '".addslashes(htmlentities($message))."'";
		if(isset($_FILES['img']) && !empty($_FILES['img']['tmp_name'])){
			$fname = 'uploads/'.time().'_'.$_FILES['img']['name'];
			$move = move_uploaded_file($_FILES['img']['tmp_name'],base_app.$fname);
			if($move){
				$data .=" , `file_path` = '{$fname}' ";
			}
		}
		if(empty($id)){
			$sql ="INSERT INTO testimonials set $data";
		}else{
			$sql ="UPDATE testimonials set $data where id = {$id}";
		}
		$save = $this->conn->query($sql);
		$action = empty($id) ? "ajouté":"mis à jour";
		if($save){
			if(isset($move) && $move && !empty($old_file)){
				if(is_file(base_app.$old_file))
					unlink(base_app.$old_file);
			}
			$resp['status']='success';
			$resp['message']= "Témoignage ".$action." avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
			
		}else{
			$resp['status']='failed';
			$resp['message']= "Erreur : ".$sql;
		}
		return json_encode($resp);
		exit;
	}

	public function testimonial_delete(){
		extract($_POST);
		$fpath = $this->conn->query("SELECT file_path FROM testimonials where id = $id")->fetch_array()['file_path'];
		$qry = $this->conn->query("DELETE FROM testimonials where id = $id");
		if($qry){
			if(is_file(base_app.$fpath))
					unlink(base_app.$fpath);
			$resp['status']='success';
			$resp['message']= "Témoignage supprimé avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
		}else{
			$resp['status']='success';
			$resp['error']= $this->conn->error;
			$resp['err_msg']= "Échec de la suppression du témoignage";
		}
		return json_encode($resp);
	}

	public function client(){
		extract($_POST);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k,array('id','description','old_file'))){
				if(!empty($data)) $data .= ", ";
				$data .= "`$k` = '$v'";
			}
		}
				if(!empty($data)) $data .= ", ";
				$data .= "`description` = '".addslashes(htmlentities($description))."'";

		if(isset($_FILES['img']) && $_FILES['img']['tmp_name'] != ''){
				$fname = 'uploads/'.strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
				$move = move_uploaded_file($_FILES['img']['tmp_name'],base_app. $fname);
				if($move){
					$data .=" , file_path = '{$fname}' ";
				}
		}	

		if(empty($id)){
			$sql ="INSERT INTO clients set $data";
		}else{
			$sql ="UPDATE clients set $data where id = {$id}";
		}
		$save = $this->conn->query($sql);
		$action = empty($id) ? "ajouté":"mis à jour";
		if($save){
			if(isset($move) && $move && !empty($old_file)){
				if(is_file(base_app.$old_file))
					unlink(base_app.$old_file);
			}
			$resp['status']='success';
			$resp['message']= "Détails du client ".$action." avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
			
		}else{
			$resp['status']='failed';
			$resp['error']= $this->conn->error;
			$resp['message']= "Erreur : ".$sql;
		}
		return json_encode($resp);
		exit;
	}

	public function client_delete(){
		extract($_POST);
		$fpath = $this->conn->query("SELECT file_path FROM clients where id = $id")->fetch_array()['file_path'];
		$qry = $this->conn->query("DELETE FROM clients where id = $id");
		if($qry){
			if(is_file(base_app.$fpath))
					unlink(base_app.$fpath);
			$resp['status']='success';
			$resp['message']= "Détails du client supprimés avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
		}else{
			$resp['status']='success';
			$resp['error']= $this->conn->error;
			$resp['err_msg']= "Échec de la suppression des détails du client";
		}
		return json_encode($resp);

	}
	public function contact(){
		extract($_POST);
		$data = "";
		foreach ($_POST as $key => $value) {
			if(!empty($data)) $data .= ", ";
				$data .= "('{$key}','{$value}')";
		}
		$this->conn->query("TRUNCATE `contacts`");
		$sql = "INSERT INTO `contacts` (meta_field, meta_value) Values $data";
		$qry = $this->conn->query($sql);
		if($qry){
			$resp['status']='success';
			$resp['message']= "Détails de contact mis à jour avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
		}else{
			$resp['status']='error';
			$resp['message']= $sql;
		}
		return json_encode($resp);
		exit;
	}
	public function message_delete(){
		extract($_POST);
		$qry = $this->conn->query("DELETE FROM messages where id = $id");
		if($qry){
			$resp['status']='success';
			$resp['message']= "Demande de renseignements supprimée avec succès";
			$this->settings->set_flashdata('success',$resp['message']);
		}else{
			$resp['status']='success';
			$resp['error']= $this->conn->error;
			$resp['err_msg']= "Échec de la suppression de la demande de renseignements";
		}
		return json_encode($resp);

	}
}

$Content = new Content();
$action = !isset($_GET['f']) ? 'none' : strtolower($_GET['f']);
$sysset = new SystemSettings();
switch ($action) {
	case 'update':
		echo $Content->update();
	break;
	case 'service':
		echo $Content->service();
	break;
	case 'service_delete':
		echo $Content->service_delete();
	break;
	case 'testimonial':
		echo $Content->testimonial();
	break;
	case 'testimonial_delete':
		echo $Content->testimonial_delete();
	break;
	case 'client':
		echo $Content->client();
	break;
	case 'client_delete':
		echo $Content->client_delete();
	break;
	case 'message_delete':
		echo $Content->message_delete();
	break;
	case 'contact':
		echo $Content->contact();
	break;
	default:
		break;
}
