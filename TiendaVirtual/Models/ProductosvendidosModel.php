<?php 

	class ProductosvendidosModel extends Mysql
	{
		private $intIdProducto;
		private $strNombre;
		private $strDescripcion;
		private $intCodigo;
		private $intCategoriaId;
		private $intPrecio;
		private $intStock;
		private $intStatus;
		private $strRuta;
		private $strImagen;

		public function __construct()
		{
			parent::__construct();
		}	
		
		public function selectProductosvendidos(){
			$sql = "SELECT p.IdProducto,
			               p.Prod_Codigo,
						   p.Prod_Nombre,
						   p.Prod_Descripcion,
						   p.Cat_IdCategoria,
						   c.Cat_Nombre as categoria,
						   p.Prod_Precio,
						   p.Prod_Stock,
						   SUM(`DetP_Cantidad`) as Venta,
						   p.Prod_Stock - SUM(`DetP_Cantidad`) as Stock,
						   p.Est_IdEstado 
                    FROM TblProducto p 
                    INNER JOIN TblCategoria c 
                    ON p.Cat_IdCategoria = c.IdCategoria 
                    INNER JOIN TblDetalle_pedido d
                    ON p.IdProducto = d.Prod_IdProducto
                    WHERE p.Est_IdEstado != 0 GROUP by  p.IdProducto";
					$request = $this->select_all($sql);
			return $request;
		}

	}
 ?>