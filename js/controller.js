angular.module("MyApp",[])
	.controller("ctrlListaClientes",['$scope','$http',function($scope,$http){


		$http({
			method:'get',
			url: 'listarCliente.php'

		}).then(function successCallback(response){
			$scope.clientes = response.data;
			console.log(response);
		});
		$scope.deleteClient = function(deletingId){
			$http({
			method:'get',
			url: 'borrarCliente.php?id='+ deletingId
			})
			.then(function successCallback(response){
				$scope.clientes = response.data;
				console.log(response);
			});
  
    	};



	}])
	.controller("ctrlListaProductos",['$scope','$http',function($scope,$http){


		$http({
			method:'get',
			url: 'listarProducto.php'

		}).then(function successCallback(response){
			$scope.productos = response.data;
			console.log(response);
		});
		$scope.deleteProduct = function(deletingId){
			$http({
			method:'get',
			url: 'borrarProducto.php?id='+ deletingId
			})
			.then(function successCallback(response){
				$scope.productos = response.data;
				console.log(deletingId);
			});
  
    	};



	}]).controller("ctrlListaPedidos",['$scope','$http',function($scope,$http){


		$http({
			method:'get',
			url: 'listarPedido.php'

		}).then(function successCallback(response){
			$scope.pedidos = response.data;
			console.log(response);
		});
		$scope.deletePedido = function(deletingId){
			$http({
			method:'get',
			url: 'borrarPedido.php?id='+ deletingId
			})
			.then(function successCallback(response){
				$scope.pedidos = response.data;
				console.log(response);
			});
  
    	};



	}]);