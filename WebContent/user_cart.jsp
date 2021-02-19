<%@page import="com.util.CartDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="com.util.ProductDetails" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="com.util.Query" %>
<%
    response.setHeader("Cache-Control", "no-store"); //when you hit back, it displays "Confirm page Submission"
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<!--%! String ifnull(String s){          You could use this, if the String ever goes null
    return (s==null)?\"\":s;
}
%-->
<%@ page errorPage="error.jsp"%>

<%!  ProductDetails pro = new ProductDetails();  //instantiating ProductDetails class and calling the getter mthods.
    CartDetails mycart = new CartDetails();
    ProductDetails sessionbean = new ProductDetails();  //need to remove 
    String name = null;
    //name = (String) request.getAttribute("name");  // very much needed line. use setters and getters instead of this.
    ArrayList productname = new ArrayList();
    ArrayList productdescription = new ArrayList();
    ArrayList brandname = new ArrayList();
    ArrayList productprice = new ArrayList();
    Query queryObject = new Query();
    //ProductDetails productdetailsObject = queryObject.getProductDetails();   need to comment it if you need to get the object from..

    //getAttribute and setAttribute always works
%>
<%
    productname = (ArrayList) session.getAttribute("productname");
    productdescription = (ArrayList) session.getAttribute("productdescription");
    brandname = (ArrayList) session.getAttribute("brandname");
    productprice = (ArrayList) session.getAttribute("productprice");
    System.out.println("Product DESCRIPTION SET IN USER CART.JSP");
    sessionbean.setProduct_description(productdescription);
//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_name());  
//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_description());
//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_price());
//    out.println("productdetailsObject values name = " + productdetailsObject.getProduct_brand());
%>
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
	<div class="wrapper" style="height: auto; min-height: 100%;">
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
        <script type="text/javascript">
        
            function changeImage()
            {
                element=document.getElementById('myimage');
                
                //                itemid=document.getElementbyId('myimage');
                //                alert(itemid.id);
                
                if (element.src.match("Images/image_3.gif"))
                {
                    element.src="Images/image_1.jpg";
                }
                else if(element.src.match("Images/image_1.jpg"))
                {
                    element.src="Images/image_2.jpg";
                }
                else 
                {
                    element.src="Images/image_3.gif";
                }
            }    
        </script>
        <% String authentication = (String) session.getAttribute("authentication");
        if (authentication != null){
        if (authentication.equals("Auth_Success")){
        %>
            <form name="logout" action="Controller" method="Post">                
                 <input class="form-group btn btn-default pull-right" type="submit" name="signout" value=" Logout "> 
             </form>         
            <%} else {%>
            <p class="login-box-msg">Entre para acessar os serviços</p>
			<div id="login_block" style="background-color: #ffffff; opacity: 0.9;">
				<h3 align="center">Log In</h3>
				<form name="Home_Page" action="Controller" method="Post">
					<div class="form-group">
					 	<div id="wrong_user"> <span style="color:red"> Usuário ou senha estão incorretos! </span> </div>
						<label for="userName">Usuário:</label> 
						<input type="text" class="form-control" name="login_name" required /> 
						<label for="password">Senha:</label> 
						<input type="password" class="form-control" name="login_password" required />
					</div>

					<div class="form-group">
						<button type="submit" value="submit" name="login_submit" class="btn btn-default" onclick="return form_validation()">Entrar</button>
						<a href="./registration.jsp" class="btn btn-default">Registrar</a>
					</div>
				</form>
			</div>
            <%}
                }%>
<section class="content">
	     <div class="row">
	       <div class="col-md-6 col-md-offset-3">       
	       	<div class="box box-primary">
	            <div class="box-header with-border">
	              <h3 class="box-title">Visualizar produtos</h3>
	            </div>
	            <form class="form-horizontal" name="cart" action="Controller" method="Post">
	              <div class="box-body">                     
					<div class="form-group">
	                  <label class="col-sm-2 control-label">Selecione um tipo</label>
	                  <div class="col-sm-10">
		                  <select class="form-control" name="Item" required>
		                    <option value="------"> </option>
		                       <option value="Books"> Livros </option> 
		                       <option value="Electronics"> Eletrônicos </option>
		                       <option value="Icecream"> Gelados </option> 
		                  </select>
	                  </div>
	                </div>
	                <div class="box-footer">
	                  	<button type="submit" class="btn btn-default"value="product" name="product">Ver produtos</button>
	                  </div>
	                </div>
	                </form>

					<div class="container text-center">
	                    <% if (session.getAttribute("total_cart_items") != null) {%>
	                    <span id="total_cart_items"> Total items in cart = <%= session.getAttribute("total_cart_items")%></span>
	                    <% }%>
					</div>
                    <% if (productname != null) {%> <form name="cart_details" method="Post" action="Controller">                         
                        <span> <button type="submit" class="btn btn-default" value="Add to Cart" name="cartdetails"> Add ao Carrinho</button></span>
                        <span> <button type="submit" class="btn btn-default" value="finish n checkout" name="checkout_cart"> Finalizar a compra</button> </span>    
                           <br><br> 

					<div class="row">
                    	<div class="col-md-12">
                    		<div class="box">
					            <div class="box-header">
					              <h3 class="box-title">Lista de produtos</h3>
					            </div>
					            <!-- /.box-header -->
					            <div class="box-body table-responsive no-padding">
					              <table class="table table-hover">
						              <tbody>
						              		<%        for (int i = 1; i <= productname.size(); i++) { %> 
						              		<tr>
		                                		<td> <%= i%> . 
		                                        <img id="myimage"  onclick="changeImage()" border="0" src="Images/image_3.gif" width="75" height="75" alt="Loading..">
		                                        <span id="inner_artcile_heading" > <%= productname.get(i - 1)%> </span></td>
		                                		<td><span id="quantity"> Qtd <input type="text" name="quantity" value="" size="1"> </span> <br></td>
		                                		<td id="table_data"> por <span id="inner_artcile_dealer"> <%= brandname.get(i - 1)%> </span> <br> </td>
		                                		<td> <%= productdescription.get(i - 1)%> <br>  </td>
		                                		<td> Preço Un.: R$ <%= productprice.get(i - 1)%> <br>  </td>
		                                	</tr>
		                                	<%}%>                                
	              					</tbody>
	              				</table>
            				</div>
          				</div>
                    </div>
                  </div>

                        <% session.setAttribute("product_name", productname);
                            }%>                            

                    </form>  
                </div>
                </div>            
            </div>
</section>

<footer class="text-center">
			<div class="container col-lg-12 col-md-12 col-xs-12 no-padding">
				<strong>Copyright &copy; 2021 by <a>Marllon S</a></strong>
			</div>
		</footer>
       </body>
   </html>