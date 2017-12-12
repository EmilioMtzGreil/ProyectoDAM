<?php 
//incluir archivo de conexion

include('conexion.php');

	$connect = connect();

	 $client = array();
	 $sqlClientes = "SELECT * FROM clientes WHERE FechBaj = '000-00-00'";

	 //echo $sqlClientes;

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