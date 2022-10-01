<?php 
	class Productosvendidos extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
			if(empty($_SESSION['login']))
			{
				header('Location: '.base_url().'/login');
				die();
			}
			getPermisos(MPRODUCTOS);
		}

		public function Productosvendidos()
		{
			if(empty($_SESSION['permisosMod']['Perm_read'])){
				header("Location:".base_url().'/dashboard');
			}
			$data['page_tag'] = "ProductosVendidos";
			$data['page_title'] = "PRODUCTOS <small>Tienda Virtual</small>";
			$data['page_name'] = "productosvendidos";
			$data['page_functions_js'] = "functions_productosvendidos.js";
			$this->views->getView($this,"productosvendidos",$data);
		}

		public function getProductosvendidos()
		{
			if($_SESSION['permisosMod']['Perm_read']){
				$arrData = $this->model->selectProductosvendidos();
				for ($i=0; $i < count($arrData); $i++) {
					$btnView = '';

					if($arrData[$i]['Est_IdEstado'] == 1)
					{
						$arrData[$i]['Est_IdEstado'] = '<span class="badge badge-success">Vendido</span>';
					}else{
						$arrData[$i]['Est_IdEstado'] = '<span class="badge badge-danger">Pendiente</span>';
					}

					$arrData[$i]['Prod_Precio'] = SMONEY.' '.formatMoney($arrData[$i]['Prod_Precio']);
					if($_SESSION['permisosMod']['Perm_read']){
						$btnView = '<button class="btn btn-info btn-sm" onClick="fntViewInfo('.$arrData[$i]['IdProducto'].')" title="Ver producto"><i class="far fa-eye"></i></button>';
					}
					$arrData[$i]['options'] = '<div class="text-center">'.$btnView.'</div>';
				}
				echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
			}
			die();
		}
	
	}

 ?>