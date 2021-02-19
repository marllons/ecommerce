<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bem vindo ao registro</title>
<!-- CSS -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/adminLTE.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
	crossorigin="anonymous"></script>
<script src="jsa/bootstrap.js"></script>

</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<b>E</b>Commerce
		</div>
		<div class="register-box-body">
			<div id="registration_block"
				style="background-color: #ffffff; opacity: 0.9;">
				<h3 align="center">Registre um novo membro</h3>
				<form action="Controller" method="Post">
					<div class="form-group">
						<label for="userName">Usuário:</label> <input type="text" class="form-control" name="registration_username" required /> 
						<label for="password">Senha:</label> <input type="password" class="form-control" name="registration_password" required />
					</div>
					<div class="form-group">
						<button type="submit" value="Register" name="registration_submit" class="btn btn-default ">Registrar</button>
						<button type="reset" value="Reset" class="btn btn-default ">Resetar</button>
						<a href="./index.jsp" class="btn btn-default">Login</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer class="text-center">
		<div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
			<strong>Copyright &copy; 2021 by <a>Marllon S</a></strong>
		</div>
	</footer>
</body>
</html>
