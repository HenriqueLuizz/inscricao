<%-- 
    Document   : classificados
    Created on : 21/06/2016, 13:50:56
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GMSUZANO - Classificados</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>GMSuzano</span>Inscrições</a>
				<!-- 
                                    ******Barra de Login comentada, pois será implantada posteriormente ******
                                <ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Profile</a></li>
							<li><a href="#"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
							<li><a href="#"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
                                -->
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<!--
                Buscar será implantado 
                <form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		-->
                <ul class="nav menu">
			<li><a href="index.html"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Painel Inicial</a></li>
			<li><a href="cadastro.html"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Cadastrar</a></li>
			<li><a href="calendario.html"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Calendario</a></li>
			<li class="parent ">
				<a href="classificados.html">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-table"></use></svg>Classificados</span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="classificadosAtualizar.html">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Atualizar
						</a>
					</li>
					<li>
						<a class="" href="classificadosBuscar.html">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Buscar
						</a>
					</li>
					<li>
						<a class="" href="classificadosListar.html">
							<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Listar
						</a>
					</li>
				</ul>
			</li>
                        <li role="presentation" class="divider"></li>
                        <!--<li><a href="login.html"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> Login Page</a></li>-->
		</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="index.html"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Classificados</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Lista Geral de Inscritos</h1>
			</div>
		</div><!--/.row-->
                
                <div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Classificados</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    <tr>
						        <th data-field="state" data-checkbox="true" >Item ID</th>
						        <th data-field="id" data-sortable="true">Inscrição</th>
						        <th data-field="name"  data-sortable="true">Nome</th>
                                                        <th data-field="id" data-sortable="true">Classificação</th>
                                                        <th data-field="name"  data-sortable="true">Endereço</th>
                                                        <th data-field="name"  data-sortable="true">Nº</th>
                                                        <th data-field="name"  data-sortable="true">Bairro</th>
                                                        <th data-field="name"  data-sortable="true">CEP</th>
                                                        <th data-field="name"  data-sortable="true">RG</th>
                                                        <th data-field="name"  data-sortable="true">Ponto de Referencia</th>
                                                        <th data-field="name"  data-sortable="true">Tel. Fixo</th>
                                                        <th data-field="name"  data-sortable="true">Tel. Cel</th>
                                                        <th data-field="name"  data-sortable="true">Tel. Recado</th>
                                                        <th data-field="name"  data-sortable="true">Mãe</th>
                                                        <th data-field="name"  data-sortable="true">Pai</th>
                                                        <th data-field="price"  data-sortable="true">Renda</th>
                                                        <th data-field="id"  data-sortable="true">Nota Port.</th>
                                                        <th data-field="id"  data-sortable="true">Nota Mat.</th>
                                                        <th data-field="id"  data-sortable="true">Freq.</th>
                                                        <th data-field="id"  data-sortable="true">Pontuação</th>
                                                        <th data-field="id"  data-sortable="true">Questionario</th>
                                                        <th data-field="name"  data-sortable="true">Status</th>
						    </tr>
						    </thead>
                                                    
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
		
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
