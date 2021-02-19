 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
	<div class="wrapper">
			<header class="main-header">
			    <nav class="navbar navbar-static-top">
			      <div class="container">
			        <div class="navbar-header">
			          <a href="./user_cart.jsp" class="navbar-brand"><b>E</b>Commerce</a>
			        </div>
			        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			          <ul class="nav navbar-nav">
			            <li><a href="./user_cart.jsp">Início <span class="sr-only">(current)</span></a></li>
			            <li class="active"><a href="user_cart.jsp" title="Insert"> Compras </a></li>
			            <li><a href="about_us.jsp" title="Update"> Sobre </a></li>
			            <li><a href="contact_us.jsp" title="Delete"> Contato </a></li>
			          </ul>
			      	</div>
			      </div>
			    </nav>
			  </header>     
        <form action="Controller" method="Post">                   
                <div class="logmeout"> <button class="btn btn-defalut pull-right" type="submit" name="signout" value=" Logout ">Log Out</button> </div>
        </form>
		<section class="content">
	     <div class="row">
	       <div class="col-md-6 col-md-offset-3">       
	       	<div class="box box-success">
	            <div class="box-header with-border">
	              <h3 class="box-title">Sobre</h3>
	            </div>
	              <div class="box-body">
		              <div class="form-group">
					                <p>Este é um ecommerce feito para a disciplina de java web para o ifce de maracanaú. <br>
					                <b>Autor: Marllon Sostenes dos Santos Brito</b></p>
	                		</div>
	                	</div>
                	</div>
               </div>
               </div>
             </section>
        </div>
			<footer class="text-center">
			<div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
				<strong>Copyright &copy; 2021 by <a>Marllon S</a></strong>
			</div>
		</footer>
       </body>
   </html>
