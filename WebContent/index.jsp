<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name = (String) request.getAttribute("name");
String names = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Log in</title>
<!-- CSS -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/adminLTE.min.css">
	<link rel="stylesheet" href="css/all-skins.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
	<script src="jsa/bootstrap.js"></script>
</head>
<body class="hold-transition login-page">
	<script type="text/javascript">
		function form_validation() {
			var name = document.Login_Form.login_name.value;
			var password = document.Login_Form.login_password.value;
			var flag = true;
			if (name == "") {
				document.getElementById("invalid_login_u").style.color = "red";
				document.getElementById('invalid_login_u').innerHTML = "Usuário é necessário!";
				document.getElementById('invalid_login_s').innerHTML = "";
				document.getElementById('wrong_user').innerHTML = "";
				flag = false;
			}
			if (password == "") {
				document.getElementById("invalid_login_s").style.color = "red";
				document.getElementById('invalid_login_s').innerHTML = "Senha é necessário!";
				document.getElementById('invalid_login_u').innerHTML = "";
				document.getElementById('wrong_user').innerHTML = "";
				flag = false;
			}
			return flag;
		}
	</script>

	<div class="login-box">
		<div class="login-logo">
	    	<b>E</b>Commerce
	  	</div>
		<div id="login_in">
			<div class="login-box-body">
			
					<%
					String authentication = (String) session.getAttribute("authentication");
					if (authentication == null) {
					%>
					<p class="login-box-msg">Entre para acessar os serviços</p>
						<div id="login_block" style="background-color: #ffffff; opacity: 0.9;">
							<h3 align="center">Log In</h3>
							<form name="Login_Form" action="Controller" method="Post">
								<div class="form-group2">
									<div id="invalid_login_u"></div>
									<label for="userName">Usuário:</label> 
									<input type="text" class="form-control" name="login_name" required /> 
									<div id="invalid_login_s"></div>
									<label for="password">Senha:</label> 
									<input type="password" class="form-control" name="login_password" required />
								</div>
	
								<div class="form-group2">
									<button type="submit" value="submit" name="login_submit" class="btn btn-default" onclick="return form_validation()">Entrar</button>
									<a href="./registration.jsp" class="btn btn-default">Registrar</a>
								</div>
							</form>
						</div>
					<%
					}
					if (authentication != null) {
						if (authentication.equals("Auth_Success")) { // out.println("authentication = " + authentication);
					%>
					
					<p class="login-box-msg">Informações do usuário</p>
						<div id="login_block" style="background-color: #ffffff; opacity: 0.9;">
							<form name="logout" action="Controller" method="Post">
								<div class="form-group2">
									<label for="userName">Usuário:</label> Admin
								</div>
								<div class="form-group2">
									<label for="password">Tipo:</label> Admin
								</div>
								<div class="form-group2">
									<input type="submit" class=" btn btn-default pull-right" name="signout" value=" Logout ">
								</div>
							</form>
						</div>
					<%
						} else {
					%>
					<p class="login-box-msg">Entre para acessar os serviços</p>
						<div id="login_block" style="background-color: #ffffff; opacity: 0.9;">
							<h3 align="center">Log In</h3>
							<form name="Login_Form" action="Controller" method="Post">
								<div class="form-group2">
								 	<div id="wrong_user"> <span style="color:red"> Usuário ou senha estão incorretos! </span> </div>
									<div id="invalid_login_u"></div>
									<label for="userName">Usuário:</label> 
									<input type="text" class="form-control" name="login_name" required /> 
									<div id="invalid_login_s"></div>
									<label for="password">Senha:</label> 
									<input type="password" class="form-control" name="login_password" required />
								</div>
	
								<div class="form-group2">
									<button type="submit" value="submit" name="login_submit" class="btn btn-default" onclick="return form_validation()">Entrar</button>
									<a href="./registration.jsp" class="btn btn-default">Registrar</a>
								</div>
							</form>
						</div>
					<%
						}
					}
					%>
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
