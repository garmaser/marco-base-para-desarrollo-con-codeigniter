<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
		<span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" title='Código amigo'>C.A.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
		<li class="active"><a href="<?php echo site_url('Varios/Presentacion')?>">Inicio</a></li>
		
        <li><a href="<?php echo site_url('Reporte/EjemploPDF'); ?>">Reporte PDF</a></li>	
        <li><a href="<?php echo site_url('Varios/CambiaClave'); ?>">Cambia clave</a></li>
		
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sólo ejemplo <span class="caret"></span></a>
		  <ul class="dropdown-menu" role="menu">
			<li><a href="<?php echo site_url('Varios/Opcion/1'); ?>">Opción 1 </a></li>
			<li><a href="<?php echo site_url('Varios/Opcion/2'); ?>">Opción 2 </a></li>
			<li class="divider"></li>
			<li><a href="<?php echo site_url('Varios/Opcion/3'); ?>">Opción 3</a></li>
		  </ul>
		</li>
		
		<li><a href="<?php echo site_url('auth/logout'); ?>">Salir</a></li>
      </ul>
    </div>
  </div>
</nav>