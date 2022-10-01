<?php 

class Proveedores extends Controllers{
	public function __construct()
	{
		parent::__construct();
		session_start();
		//session_regenerate_id(true);
		if(empty($_SESSION['login']))
		{
			header('Location: '.base_url().'/login');
			die();
		}
		getPermisos(MCLIENTES);
	}

	public function Proveedores()
	{
		if(empty($_SESSION['permisosMod']['Perm_read'])){
			header("Location:".base_url().'/dashboard');
		}
		$data['page_tag'] = "Proveedores";
		$data['page_title'] = "PROVEEDORES <small>Tienda Virtual</small>";
		$data['page_name'] = "proveedores";
		$data['page_functions_js'] = "functions_proveedores.js";
		$this->views->getView($this,"proveedores",$data);
	}

	public function setProveedor(){
				$idProveedor = intval($_POST['idProveedor']);
				$strIdentificacion = strClean($_POST['txtIdentificacion']);
				$strNombre = ucwords(strClean($_POST['txtNombre']));
				$intTelefono = intval(strClean($_POST['txtTelefono']));
				$strEmail = strtolower(strClean($_POST['txtEmail']));
				$request_proveedor = "";
				if($idProveedor == 0)
				{
					if($_SESSION['permisosMod']['Perm_write']){
						$request_proveedor = $this->model->insertProveedor($strIdentificacion,
																			$strNombre,  
																			$intTelefono, 
																			$strEmail);
						$option = 1;
					}
				}else{
					if($_SESSION['permisosMod']['Perm_update']){
						$request_proveedor = $this->model->updateProveedor($idProveedor,
																	$strIdentificacion, 
																	$strNombre,
																	$intTelefono, 
																	$strEmail);
						$option = 2;
					}
				}

				if($request_proveedor > 0 )
				{
					if($option == 1){
						$arrResponse = array('status' => true, 'msg' => 'Datos guardados correctamente.');
					}else{
						$arrResponse = array('status' => true, 'msg' => 'Datos Actualizados correctamente.');
					}
				//}else if($request_proveedor == 'exist'){
					//$arrResponse = array('status' => false, 'msg' => '¡Atención! el email o la identificación ya existe, ingrese otro.');		
				}else{
					$arrResponse = array("status" => false, "msg" => 'No es posible almacenar los datos.');
				}
			echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
		die();
	}

	public function getProveedores()
	{
		if($_SESSION['permisosMod']['Perm_read']){
			$arrData = $this->model->selectProveedores();
			for ($i=0; $i < count($arrData); $i++) {
				$btnView = '';
				$btnEdit = '';
				$btnDelete = '';
				if($_SESSION['permisosMod']['Perm_read']){
					$btnView = '<button class="btn btn-info btn-sm" onClick="fntViewInfo('.$arrData[$i]['IdProveedor'].')" title="Ver proveedor"><i class="far fa-eye"></i></button>';
				}
				if($_SESSION['permisosMod']['Perm_update']){
					$btnEdit = '<button class="btn btn-primary  btn-sm" onClick="fntEditInfo(this,'.$arrData[$i]['IdProveedor'].')" title="Editar proveedor"><i class="fas fa-pencil-alt"></i></button>';
				}
				if($_SESSION['permisosMod']['Perm_delete']){	
					$btnDelete = '<button class="btn btn-danger btn-sm" onClick="fntDelInfo('.$arrData[$i]['IdProveedor'].')" title="Eliminar proveedor"><i class="far fa-trash-alt"></i></button>';
				}
				$arrData[$i]['options'] = '<div class="text-center">'.$btnView.' '.$btnEdit.' '.$btnDelete.'</div>';
			}
			echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		}
		die();
	}

	public function getProveedor($idproveedor){
		if($_SESSION['permisosMod']['Perm_read']){
			$idproveedor = intval($idproveedor);
			if($idproveedor > 0)
			{
				$arrData = $this->model->selectProveedor($idproveedor);
				if(empty($arrData))
				{
					$arrResponse = array('status' => false, 'msg' => 'Datos no encontrados.');
				}else{
					$arrResponse = array('status' => true, 'data' => $arrData);
				}
				echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
			}
		}
		die();
	}

	public function delProveedor()
	{
		if($_POST){
			if($_SESSION['permisosMod']['Perm_delete']){
				$intIdproveedor = intval($_POST['idProveedor']);
				$requestDelete = $this->model->deleteProveedor($intIdproveedor);
				if($requestDelete)
				{
					$arrResponse = array('status' => true, 'msg' => 'Se ha eliminado el Proveedor');
				}else{
					$arrResponse = array('status' => false, 'msg' => 'Error al eliminar al Proveedor.');
				}
				echo json_encode($arrResponse,JSON_UNESCAPED_UNICODE);
			}
		}
		die();
	}



}

?>