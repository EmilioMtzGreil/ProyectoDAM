<?php 
include('includes/header.php');
?>
  <div class="content-wrapper" ng-controller="ctrlListaClientes">
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
                  <th>DNI</th>
                  <th>Nombre</th>
                  <th>Apellidos</th>
                </tr>
              </thead>
              <tbody>                
                <tr ng-repeat="cl in clientes" ng-model="IdClientesNIF">
                  <td>{{cl.IdClientesNIF}}</td>
                  <td>{{cl.Nombre}}</td>
                  <td>{{cl.Apellidos}}</td>
                  <td>
                    <button type="button" class="btn btn-primary btn-sm">Editar</button>
                  </td>
                  <td>
                    <button type="button" class="btn btn-danger btn-sm" ng-click="deleteClient(cl.IdClientesNIF)">Eliminar</button>
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