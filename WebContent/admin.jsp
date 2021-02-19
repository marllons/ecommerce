<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Bem vindo</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/adminLTE.min.css">
		<link rel="stylesheet" href="css/all-skins.min.css">
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"
			integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
			crossorigin="anonymous"></script>
		<script src="jsa/bootstrap.js"></script>
	</head>
	<body class="layout-top-nav skin-black-light">
		<div class="wrapper" style="height: auto; min-height: 100%;">
			<header class="main-header">
			    <nav class="navbar navbar-static-top">
			      <div class="container">
			        <div class="navbar-header">
			          <a href="./admin.jsp" class="navbar-brand"><b>E</b>Commerce</a>
			        </div>
			
			        <!-- Collect the nav links, forms, and other content for toggling -->
			        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			          <ul class="nav navbar-nav">
			            <li class="active"><a href="./admin.jsp">Início <span class="sr-only">(current)</span></a></li>
			            <li><a href="admin_insert.jsp" title="Insert"> Inserir item </a></li>
			            <li><a href="admin_update.jsp" title="Update"> Editar item </a></li>
			            <li><a href="admin_remove.jsp" title="Delete"> Deletar item </a></li>
			            <li><a href="admin_view_all.jsp" title="View"> Ver todos itens </a></li>
			          </ul>
			      	</div>
			      </div>
			    </nav>
			  </header>
			<%String admin_name = (String) session.getAttribute("name");%>
			<div class="container text-center">
				<div class="row">
					<h2>Bem vindo <%= admin_name %> :D</h2>
					<br /> <br />
					<form name="admin" action="Controller" method="post">
						<button type="submit" class="btn btn-default" name="signout" Value="Logout">Logout</button>
					</form>
				</div>
			</div>
			<footer class="text-center">
				<div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
					<strong>Copyright &copy; 2021 by <a>Marllon S</a></strong>
				</div>
			</footer>
		</div>
	</body>
</html>
