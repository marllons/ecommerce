<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
			          <a href="./admin.jsp" class="navbar-brand"><b>E</b>Commerce</a>
			        </div>
			
			        <!-- Collect the nav links, forms, and other content for toggling -->
			        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			          <ul class="nav navbar-nav">
			            <li><a href="./admin.jsp">Início <span class="sr-only">(current)</span></a></li>
			            <li><a href="admin_insert.jsp" title="Insert"> Inserir item </a></li>
			            <li><a href="admin_update.jsp" title="Update"> Editar item </a></li>
			            <li><a href="admin_remove.jsp" title="Delete"> Deletar item </a></li>
			            <li class="active"><a href="admin_view_all.jsp" title="View"> Ver todos itens </a></li>
			          </ul>
			      	</div>
			      </div>
			    </nav>
			  </header>
        <%! ArrayList productname = new ArrayList();
            ArrayList productdescription = new ArrayList();
            ArrayList brandname = new ArrayList();
            ArrayList productprice = new ArrayList();
            ArrayList productid = new ArrayList();
        %>
        <%
            productname = (ArrayList) session.getAttribute("productname");
            productdescription = (ArrayList) session.getAttribute("productdescription");
            brandname = (ArrayList) session.getAttribute("brandname");
            productprice = (ArrayList) session.getAttribute("productprice");
            productid = (ArrayList) session.getAttribute("productid");
            System.out.println("productname = " + productname);
            System.out.println("productdescription = " + productdescription);
            System.out.println("brandname = " + brandname);
            System.out.println("productprice = " + productprice);
            System.out.println("productid = " + productid);            
        %>



        <% String classifier_name = "none";
            session.setAttribute("admin_mode", "view");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
        //    out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
        //    out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
               // out.println("Classifier name selected = " + classifier_name);
            }%>       
        

<section class="content">
	     <div class="row">
	       <div class="col-md-6 col-md-offset-3">       
	       	<div class="box box-success">
	            <div class="box-header with-border">
	              <h3 class="box-title">Visualizar produtos</h3>
	            </div>
	            <form class="form-horizontal" name="admin" action="Controller" method="post">
	              <div class="box-body">
                     <% if(db_insertion_result!=null){if(db_insertion_result.equals("success")){%>
                     
                    <span style="color:green"> 
                     <b> Produtos exibidos com Sucesso!!  </b>
                      </span> 
                      
                     <% } if(db_insertion_result.equals("failure")) { %>
                     <span style="color:red">
                      <b> Falha ao exibir :( <br> Tente novamente!   </b> 
                      </span> 
                     <% }} %>
                     
					<div class="form-group2">
	                  <label class="col-sm-2 control-label">Selecione um tipo</label>
	                  <div class="col-sm-10">
		                  <select class="form-control" name="admin_classifer_choice" required>
		                    <option value="------"> </option>
		                       <option value="Books"> Livros </option> 
		                       <option value="Electronics"> Eletrônicos </option>
		                       <option value="Icecream"> Gelados </option> 
		                  </select>
	                  </div>
	                </div>
	                <% if ((String) session.getAttribute("classifier_name") != null) {
                         classifier_name = (String) session.getAttribute("classifier_name");%>
                               
                    Categoria selecionada : <span style="color:green">  <b> <%= classifier_name%> </b> </span>

                    <% }%>
             	      <div class="box-footer">
	                  	<button type="submit" value="Insert" name="admin_view_all_products" class="btn btn-default pull-right" >Ver todos</button>
	                  </div>
                    
                     <br /> <br /> 
                    <div class="container"  id="admin_mode"> </div>
                    
                    
                    <% if (productname != null) {%> 
                    <div class="row">
                    	<div class="col-md-12">
                    		<div class="box">
            <div class="box-header">
              <h3 class="box-title">Lista de produtos</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody><tr>
                  <th>ID</th>
                  <th>Nome do produto</th>
                  <th>Loja/Autor</th>
                  <th>Descrição</th>
                  <th>Preço</th>
                </tr>
                <%        for (int i = 1; i <= productname.size(); i++) {
                        %>
                        <tr>
                            <td> <%= productid.get(i - 1)%> </td> 
                            <td> <%= productname.get(i - 1)%>        </td>                                
                            <td> <%= brandname.get(i - 1)%>          </td>
                            <td> <%= productdescription.get(i - 1)%> </td>
                            <td> <%= productprice.get(i - 1)%>       </td>
                        </tr> 
                                           
                        <%
                        }%>
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
                    	</div>
                    </div>
                    
                   
                    <% }%> 
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




