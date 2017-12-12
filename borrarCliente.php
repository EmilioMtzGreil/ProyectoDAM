<?php 
//incluir archivo de conexion
$id = $_GET;
include('conexion.php');

	$connect = connect();

	$nif = $id["id"];
	 $client = array();
	 $fechBaj = date("Y-m-d");
	 $sqlDelClientes = "UPDATE clientes SET FechBaj= '$fechBaj' WHERE IdClientesNIF= '$nif'";
	 //$sqlDelClientes = "DELETE FROM clientes WHERE IdClientesNIF='$nif'";

	 $result = mysqli_query($connect,$sqlDelClientes);

	 
	 $client = array();
	 $sqlClientes = "SELECT * FROM clientes WHERE FechBaj = '0000-00-00'";

	 if ($result = mysqli_query($connect,$sqlClientes)) {
	 	

	 	$cr = 0;
	 	while ($row = mysqli_fetch_assoc($result)) {
	 		$client[$cr]['IdClientesNIF'] = $row['IdClientesNIF'];
	 		$client[$cr]['Nombre'] = $row['Nombre'];
	 		$client[$cr]['Apellidos'] = $row['Apellidos'];
	 		$client[$cr]['FechBaj'] = $row['FechBaj'];
	 			 		
	 		$cr++;
	 	}
	 }

	 $json = json_encode($client);
	 echo $json;
	 //echo (string)$json;
	 exit;
 ?>