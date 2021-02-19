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
        <div class="container text-center">
            <% String Confirmation = (String) session.getAttribute("Order_Confirmation");
                if (Confirmation == null) {
            %>
		<section class="content">
	     <div class="row">
	       <div class="col-md-6 col-md-offset-3">       
	       	<div class="box box-success">
	            <div class="box-header with-border">
	              <h3 class="box-title">Informações de pagamento</h3>
	            </div>
	            <form action="Controller" method="post">
	              <div class="box-body">
		              <div class="form-group">
		                  <label class="col-sm-2 control-label" for="Name">Tipo de cartão:</label>
		                  <div class="col-sm-10">
			                  <select class="form-control" name="card_type" required>
			                       <option> Nubank </option> 
			                       <option> Neon </option>
			                       <option> Digio </option> 
			                       <option> Next </option> 
			                  </select>
		                  </div>
		                </div>                 
	                	<div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">Nº do cartão:</label>
		                  <div class="col-sm-10">
		                    <input type="number" class="form-control" name="card_number"  maxlength="16" required />
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">Titular:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="card_name"  maxlength="20" required />
		                  </div>
		                </div>
		                <div class="form-group">
		                  <label class="col-sm-2 control-label" for="Name">Vencimento:</label>
		                  <div class="col-sm-5">
			                  <select class="form-control" name="expiration_month" required>
			                       <option> 1 </option> 
			                       <option> 2 </option>
			                       <option> 3 </option> 
			                       <option> 4 </option> 
			                       <option> 5 </option> 
			                       <option> 6 </option>
			                       <option> 7 </option> 
			                       <option> 8 </option>
			                       <option> 9 </option> 
			                       <option> 10 </option>
			                       <option> 11 </option> 
			                       <option> 12 </option>
			                  </select>
		                  </div>
		                  <div class="col-sm-5">
			                  <select class="form-control" name="expiration_year" required>
			                       <option> 2021 </option> 
			                       <option> 2022 </option>
			                       <option> 2023 </option> 
			                       <option> 2024 </option> 
			                       <option> 2025 </option> 
			                       <option> 2026 </option>
			                       <option> 2027 </option> 
			                       <option> 2028 </option>
			                       <option> 2029 </option> 
			                       <option> 2030 </option>
			                  </select>
		                  </div>
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">Comprador:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="fullname"  size="8" required />
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">Endereço:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="adress" required />
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">Cidade:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="city" required />
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label for="Name" class="col-sm-2 control-label">CEP:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="zipcode"  required />
		                  </div>
		                </div>
		                
		                    
		              <div class="box-footer">
	                	<button type="submit" value="Update" name="place_order" class="btn btn-default pull-right" >Realizar pagamento</button>
	              	</div>                      
             		</form>
        		</div>         
   				</div>
   			</div>
      	</section>                       
              
                <% } %>
                <%
                    if (Confirmation != null) {
                %>
                
                <section class="content">
				     <div class="row">
				       <div class="col-md-6 col-md-offset-3">       
				       	<div class="box box-default">
				            <div class="box-header with-border">
				              <h3 class="box-title">Informações de compra</h3>
				            </div>
				              <div class="box-body">
					                <h1> O pedido foi realizado com sucesso! Obrigado por comprar conosco :D </h1>
					                <div id="link">
					                	<h2><a href="user_cart.jsp"> Comprar novamente? </a> </h2> 
					                </div>
	                			
	                		</div>
	                	</div>
                	</div>
               </div>
             </section>
                
                <% }%>
       
        </div>
        </div>
			<footer class="text-center">
			<div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
				<strong>Copyright &copy; 2021 by <a>Marllon S</a></strong>
			</div>
		</footer>
       </body>
   </html>
