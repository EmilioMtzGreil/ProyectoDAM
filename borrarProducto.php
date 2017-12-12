<?php 
//incluir archivo de conexion
$id = $_GET;
include('conexion.php');

	$connect = connect();

	$prodId = $id['id'];
	//echo $prodId;
	 $product = array();
	 $fechBaj = date("Y-m-d");
	 $sqlDelProductos = "UPDATE productos SET FechBaj= '$fechBaj' WHERE IdProducto= '$prodId'";
	 //$sqlDelProductos = "DELETE FROM productos WHERE IdProducto='$nif'";
	 //echo  $sqlDelProductos;
	 $result = mysqli_query($connect,$sqlDelProductos);

	 
	 $client = array();
	 $sqlProductos = "SELECT * FROM productos WHERE FechBaj = '0000-00-00'";

	 if ($result = mysqli_query($connect,$sqlProductos)) {
	 	

	 	$cr = 0;
	 	while ($row = mysqli_fetch_assoc($result)) {
	 		$product[$cr]['IdProducto'] = $row['IdProducto'];
	 		$product[$cr]['Marca'] = $row['Marca'];
	 		$product[$cr]['Modelo'] = $row['Modelo'];
	 		$product[$cr]['Descripcion'] = $row['Descripcion'];
	 		$product[$cr]['Precio'] = $row['Precio'];
	 		$product[$cr]['Stock'] = $row['Stock'];
	 		$product[$cr]['CategoriaId'] = $row['CategoriaId'];
	 		$product[$cr]['FechBaj'] = $row['FechBaj'];

	 		
	 		$cr++;
	 	}
	 }

	 $json = json_encode($product);
	 echo $json;
	 //echo (string)$json;
	 exit;
 ?>