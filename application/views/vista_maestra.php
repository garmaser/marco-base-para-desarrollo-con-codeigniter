<?php $this->load->view('header'); ?>
<div class="container">
	<div class="page-header text-center" style="margin-top:2px">
	   <div class="col-sm-offset-3 col-sm-6" >
	   <h2>Ejemplo 1 de 'Código Amigo'<br />
		  <small>Estructura base para empezar a programar con CodeIgniter</small>
	   </h2>
	   </div>
	</div>
	<div class='clearfix'></div>
	<?php if(!isset($OmitirMenu) || ! $OmitirMenu)
		$this->load->view('vista_menu'); 
	?>
		
	<div>
		<?php $this->load->view($VistaPrincipal); ?>
	</div>
</div>

<?php $this->load->view('footer'); ?>