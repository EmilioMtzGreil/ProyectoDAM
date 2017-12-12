<?php 
//incluir archivo de conexion

include('conexion.php');

	$connect = connect();

	 $pedidos = array();
	 $sqlPedidos = "SELECT * FROM pedido";

	 if ($result = mysqli_query($connect,$sqlPedidos)) {
	 	

	 	$cr = 0;
	 	while ($row = mysqli_fetch_assoc($result)) {
	 		$pedidos[$cr]['IdPedido'] = $row['IdPedido'];
	 		$pedidos[$cr]['ClienteId'] = $row['ClienteId'];
	 		$pedidos[$cr]['PrecioTotal'] = $row['PrecioTotal'];
	 		$pedidos[$cr]['FechaPedido'] = $row['FechaPedido'];
	 			 		
	 		$cr++;
	 	}
	 }

	 $json = json_encode($pedidos);
	 echo $json;
	 //echo (string)$json;
	 exit;


	


 ?>