<?php 
include('includes/header.php');
?>
  <div class="content-wrapper" ng-controller="ctrlListaPedidos">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Tables</li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-users"></i> Clientes</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Cliente</th>
                  <th>Precio Total</th>
                  <th>Fecha Pedido</th>
                </tr>
              </thead>
              <tbody>
                <tr ng-repeat="ped in pedidos" ng-model="ped.IdPedido">
                  <td>{{ped.ClienteId}}</td>
                  <td>{{ped.PrecioTotal}}</td>
                  <td>{{ped.FechaPedido}}</td>
                  <td>
                    <button type="button" class="btn btn-primary btn-sm">Editar</button>
                  </td>
                  <td>
                    <button type="button" class="btn btn-danger btn-sm">Eliminar</button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <?php 
    include('includes/footer.php');
    ?>