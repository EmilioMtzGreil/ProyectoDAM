<?php 
include('includes/header.php');
?>
  <div class="content-wrapper" ng-controller="ctrlListaProductos">
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
          <i class="fa fa-table"></i> Productos</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Marca</th>
                  <th>Modelo</th>
                  <th>Descripcion</th>
                  <th>Precio</th>
                  <th>Stock</th>
                  <th>Categoria</th>
                </tr>
              </thead>
              <tbody>
                <tr ng-repeat="prod in productos" ng-model="prod.IdProducto">
                  <td>{{prod.Marca}}</td>
                  <td>{{prod.Modelo}}</td>
                  <td>{{prod.Descripcion}}</td>
                  <td>{{prod.Precio}}</td>
                  <td>{{prod.Stock}}</td>
                  <td>{{prod.CategoriaId}}</td>
                  <td>
                    <button type="button" class="btn btn-primary btn-sm">Editar</button>
                  </td>
                  <td>
                    <button type="button" class="btn btn-danger btn-sm" ng-click="deleteProduct(prod.IdProducto)">Dar de Baja</button>
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