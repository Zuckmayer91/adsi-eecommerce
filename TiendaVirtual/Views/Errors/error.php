<?php 
    headerTienda($data);
?>

<script>
  document.querySelector('header').classList.add('header-v4');
</script>

<div class="container text-center">
	<main class="app-content">
      <div class="page-error tile">
        <?= $data['page']['Pag_Contenido']; ?>
		<a href="javascript:window.history.back();" class="pagina">GRUPO # 2 ADSI 2022</a>
        <hr>
        <p>La página que buscas no existe, ponte en contacto con el administrador.</p>
		
        <p><a class="btn btn-dark" href="javascript:window.history.back();">Regresar</a></p>
      </div>
    </main>
</div>
<?php footerTienda($data); ?>


