<?php headerAdmin($data); ?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i><?= $data['page_title'] ?></h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="<?= base_url(); ?>/dashboard">Dashboard</a></li>
        </ul>
      </div>
      <div class="row">
        <?php if(!empty($_SESSION['permisos'][2]['Perm_read'])){ ?>
        <div class="col-md-6 col-lg-3">
          <a href="<?= base_url() ?>/usuarios" class="linkw">
            <div class="widget-small primary"><i class="icon fa fa-users fa-3x"></i>
              <div class="info">
                <h4>Usuarios</h4>
                <p><b><?= $data['usuarios'] ?></b></p>
              </div>
            </div>
          </a>
        </div>
        <?php } ?>
        <?php if(!empty($_SESSION['permisos'][3]['Perm_read'])){ ?>
        <div class="col-md-6 col-lg-3">
          <a href="<?= base_url() ?>/clientes" class="linkw">
		  <div class="widget-small info"><i class="icon fa fa-user fa-3x"></i>
			  <div  class="info">
                <h4>Clientes</h4>
                <p><b><?= $data['clientes'] ?></b></p>
              </div>
            </div>
          </a>
        </div>
        <?php } ?>
        <?php if(!empty($_SESSION['permisos'][4]['Perm_read']) ){ ?>
        <div class="col-md-6 col-lg-3">
          <a href="<?= base_url() ?>/productos" class="linkw">
            <div class="widget-small warning"><i class="icon fa fa fa-archive fa-3x"></i>
              <div class="info">
                <h4>Productos</h4>
                <p><b><?= $data['productos'] ?></b></p>
              </div>
            </div>
          </a>
        </div>
        <?php } ?>
        <?php if(!empty($_SESSION['permisos'][5]['Perm_read'])){ ?>
        <div class="col-md-6 col-lg-3">
          <a href="<?= base_url() ?>/pedidos" class="linkw">
            <div class="widget-small danger"><i class="icon fa fa-shopping-cart fa-3x"></i>
                <div  class="info">
                <h4>Pedidos</h4>
                <p><b><?= $data['pedidos'] ?></b></p>
              </div>
            </div>
          </a>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <?php if(!empty($_SESSION['permisos'][5]['Perm_read'])){ ?>
        <div class="col-md-6">
          <div class="tile">
            <h3 class="tile-title">Últimos Pedidos</h3>
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Cliente</th>
                  <th>Estado</th>
                  <th class="text-right">Monto</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php 
                    if(count($data['lastOrders']) > 0 ){
                      foreach ($data['lastOrders'] as $pedido) {
                 ?>
                <tr>
                  <td><?= $pedido['IdPedido'] ?></td>
                  <td><?= $pedido['nombre'] ?></td>
                  <td><?= $pedido['Ped_Proceso'] ?></td>
                  <td class="text-right"><?= SMONEY." ".formatMoney($pedido['Ped_Monto']) ?></td>
                  <td><a href="<?= base_url() ?>/pedidos/orden/<?= $pedido['IdPedido'] ?>" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                </tr>
                <?php } 
                  } ?>

              </tbody>
            </table>
          </div>
        </div>
        <?php } ?>

        <div class="col-md-6">
          <div class="tile">
               <h3 class="tile-title">Últimos Productos vendidos</h3>
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Producto</th>
                  <th>Cantidad</th>
                  <th class="text-right">Precio</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <?php 
                    if(count($data['lastProductosV']) > 0 ){
                      foreach ($data['lastProductosV'] as $productov) {
                 ?>
                <tr>
                  <td><?= $productov['IdProducto'] ?></td>
                  <td><?= $productov['Prod_Codigo'] ?></td>
                  <td><?= $productov['Venta'] ?></td>
                  <td class="text-right"><?= SMONEY." ".formatMoney($productov['Prod_Precio']) ?></td>
                </tr>
                <?php } 
                  } ?>

              </tbody>
            </table>
           
		   
		   
        </div>
      </div>
    </main>
<?php footerAdmin($data); ?>

<script>

  Highcharts.chart('pagosMesAnio', {
      chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
      },
      title: {
          text: 'Ventas por tipo pago, <?= $data['pagosMes']['mes'].' '.$data['pagosMes']['anio'] ?>'
      },
      tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      },
      accessibility: {
          point: {
              valueSuffix: '%'
          }
      },
      plotOptions: {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f} %'
              }
          }
      },
      series: [{
          name: 'Brands',
          colorByPoint: true,
          data: [
          <?php 
            foreach ($data['pagosMes']['tipospago'] as $pagos) {
              echo "{name:'".$pagos['tipopago']."',y:".$pagos['total']."},";
            }
           ?>
          ]
      }]
  });

  Highcharts.chart('graficaMes', {
      chart: {
          type: 'line'
      },
      title: {
          text: 'Ventas de <?= $data['ventasMDia']['mes'].' del '.$data['ventasMDia']['anio'] ?>'
      },
      subtitle: {
          text: 'Total Ventas <?= SMONEY.'. '.formatMoney($data['ventasMDia']['total']) ?> '
      },
      xAxis: {
          categories: [
            <?php 
                foreach ($data['ventasMDia']['ventas'] as $dia) {
                  echo $dia['dia'].",";
                }
            ?>
          ]
      },
      yAxis: {
          title: {
              text: ''
          }
      },
      plotOptions: {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      },
      series: [{
          name: 'Dato',
          data: [
            <?php 
                foreach ($data['ventasMDia']['ventas'] as $dia) {
                  echo $dia['total'].",";
                }
            ?>
          ]
      }]
  });
  
  Highcharts.chart('graficaAnio', {
      chart: {
          type: 'column'
      },
      title: {
          text: 'Ventas del año <?= $data['ventasAnio']['anio'] ?> '
      },
      subtitle: {
          text: 'Esdística de ventas por mes'
      },
      xAxis: {
          type: 'category',
          labels: {
              rotation: -45,
              style: {
                  fontSize: '13px',
                  fontFamily: 'Verdana, sans-serif'
              }
          }
      },
      yAxis: {
          min: 0,
          title: {
              text: ''
          }
      },
      legend: {
          enabled: false
      },
      tooltip: {
          pointFormat: 'Population in 2017: <b>{point.y:.1f} millions</b>'
      },
      series: [{
          name: 'Population',
          data: [
            <?php 
              foreach ($data['ventasAnio']['meses'] as $mes) {
                echo "['".$mes['mes']."',".$mes['venta']."],";
              }
             ?>                 
          ],
          dataLabels: {
              enabled: true,
              rotation: -90,
              color: '#FFFFFF',
              align: 'right',
              format: '{point.y:.1f}', // one decimal
              y: 10, // 10 pixels down from the top
              style: {
                  fontSize: '13px',
                  fontFamily: 'Verdana, sans-serif'
              }
          }
      }]
  });

</script>
    