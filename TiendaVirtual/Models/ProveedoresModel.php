<?php 
class ProveedoresModel extends Mysql
{
	private $intIdProveedor;
	private $strIdentificacion;
	private $strNombre;
	private $intTelefono;
	private $strEmail;
	private $intStatus;

	public function __construct()
	{
		parent::__construct();
	}	

	public function insertProveedor(string $identificacion, string $nombre, int $telefono, string $email){

		$this->strIdentificacion = $identificacion;
		$this->strNombre = $nombre;
		$this->intTelefono = $telefono;
		$this->strEmail = $email;

		$return = 0;
		$sql = "SELECT * FROM TblProveedor WHERE 
				Prov_Identificacion = '{$this->strIdentificacion}' ";
		$request = $this->select_all($sql);

		if(empty($request))
		{
			$query_insert  = "INSERT INTO TblProveedor(Prov_Identificacion,Prov_Nombre,Prov_Telefono,Prov_Email) 
							  VALUES(?,?,?,?)";
        	$arrData = array($this->strIdentificacion,
    						$this->strNombre,
    						$this->intTelefono,
    						$this->strEmail);
        	$request_insert = $this->insert($query_insert,$arrData);
        	$return = $request_insert;
		}else{
			$return = "exist";
		}
        return $return;
	}

	public function selectProveedores()
	{
		$sql = "SELECT IdProveedor,Prov_Identificacion,Prov_Nombre,Prov_Telefono,Prov_Email,Est_IdEstado 
				FROM TblProveedor 
				WHERE  Est_IdEstado != 0 "; 
		$request = $this->select_all($sql);
		return $request;
	}

	public function selectProveedor(int $idproveedor){
		$this->intIdProveedor = $idproveedor;
		$sql = "SELECT IdProveedor,Prov_Identificacion,Prov_Nombre,Prov_Telefono,Prov_Email,Est_IdEstado, DATE_FORMAT(Prov_Datecreated, '%d-%m-%Y') as fechaRegistro 
				FROM TblProveedor
				WHERE IdProveedor = $this->intIdProveedor";
		$request = $this->select($sql);
		return $request;
	}

	public function updateProveedor(int $idProveedor, string $identificacion, string $nombre, int $telefono, string $email){
		$this->intIdProveedor = $idProveedor;
		$this->strIdentificacion = $identificacion;
		$this->strNombre = $nombre;
		$this->intTelefono = $telefono;
		$this->strEmail = $email;

		$sql = "SELECT * FROM TblProveedor WHERE (IdProveedor != $this->intIdProveedor)
									  OR (Prov_Identificacion = '{$this->strIdentificacion}') ";
		$request = $this->select_all($sql);

		if(empty($request))
		{
			if($this->strPassword  != "")
			{
				$sql = "UPDATE TblProveedor SET Prov_Identificacion=?, Prov_Nombre=?, Prov_Telefono=?, Prov_Email=?
						WHERE IdProveedor = $this->intIdProveedor ";
				$arrData = array($this->strIdentificacion,
        						$this->strNombre,
        						$this->intTelefono,
        						$this->strEmail);
			}else{
				$sql = "UPDATE TblProveedor SET Prov_Identificacion=?, Prov_Nombre=?, Prov_Telefono=?, Prov_Email=?
						WHERE IdProveedor = $this->intIdProveedor ";
				$arrData = array($this->strIdentificacion,
        						$this->strNombre,
        						$this->intTelefono,
        						$this->strEmail);
			}
			$request = $this->update($sql,$arrData);
		}else{
			$request = "exist";
		}
		return $request;
	}

	public function deleteProveedor(int $intIdproveedor)
	{
		$this->intIdProveedor = $intIdproveedor;
		$sql = "UPDATE TblProveedor SET Est_IdEstado = ? WHERE IdProveedor = $this->intIdProveedor ";
		$arrData = array(0);
		$request = $this->update($sql,$arrData);
		return $request;
	}
}

 ?>