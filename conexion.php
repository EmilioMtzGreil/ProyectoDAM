<?php 
//********FUNCTION PRINCIPAL PARA LA CONEXION A LA BASE DE DATOS MySQL*************//
	


		define('DB_HOST','localhost' );
		define('DB_USER','root' );
		define('DB_PASSWORD','' );
		define('DB_NAME','proyectodam' );



		function connect(){
			$connect = mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
			if(mysqli_connect_errno($connect)){
				die("connection failed: " .mysqli_connect_error());
			}

			mysqli_set_charset($connect, "utf8");

			return $connect;
		}




 ?>
