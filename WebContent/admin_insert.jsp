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
			            <li class="active"><a href="admin_insert.jsp" title="Insert"> Inserir item </a></li>
			            <li><a href="admin_update.jsp" title="Update"> Editar item </a></li>
			            <li><a href="admin_remove.jsp" title="Delete"> Deletar item </a></li>
			            <li><a href="admin_view_all.jsp" title="View"> Ver todos itens </a></li>
			          </ul>
			      	</div>
			      </div>
			    </nav>
			  </header>

        <% String classifier_name = "none";
            session.setAttribute("admin_mode", "insert");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
            //out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
            //out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
                //out.println("Classifier name selected = " + classifier_name);                
            }%>         
             

<section class="content">
	     <div class="row">
	       <div class="col-md-6 col-md-offset-3">       
	       	<div class="box box-danger">
	            <div class="box-header with-border">
	              <h3 class="box-title">Inserir um produto</h3>
	            </div>
	            <form class="form-horizontal" name="admin" action="Controller" method="post">
	              <div class="box-body">
                     <% if(db_insertion_result!=null){if(db_insertion_result.equals("success")){%>
                     
                    <span style="color:green"> 
                     <b> Produto inserido com Sucesso!!  </b>
                      </span> 
                      
                     <% } if(db_insertion_result.equals("failure")) { %>
                     <span style="color:red">
                      <b> Falha ao inserir :( <br> Tente novamente!   </b> 
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
	                <div class="form-group">
                            <button type="submit" value="Insert" name="admin_catagory" class="btn btn-default" >Insert</button>

                        </div>
	            
                    
                    
                     <br /> <br /> 
                    <div class="container"  id="admin_mode"> </div>
                    
                    <% if ((String) session.getAttribute("classifier_name") != null) {
                         classifier_name = (String) session.getAttribute("classifier_name");%>
                               
                    Categoria selecionada : <span style="color:green">  <b> <%= classifier_name %> </b> </span>

                    <% }%>      <br /> <br />
                    <% if (classifier_name != null || classifier_name != "") {%>
                       <div class="form-group2">
		                  <label for="Name" class="col-sm-2 control-label">Nome do produto:</label>
		                  <div class="col-sm-10">
		                    <input type="text" class="form-control" name="admin_product_name"  required />
		                  </div>
		                </div>
                       <div class="form-group2">
	                  <label for="Author" class="col-sm-2 control-label">Autor/Loja:</label>
	                  <div class="col-sm-10">
	                    <input type="text" class="form-control" name="admin_product_author_store_name" required />
	                  </div>
	                </div>
	                <div class="form-group2">
	                  <label for="Description" class="col-sm-2 control-label">Descrição</label>
	                  <div class="col-sm-10">
	                   <input type="text" class="form-control" name="admin_product_description" required/>
	                  </div>
	                </div>
	                <div class="form-group2">
	                  <label for="Price" class="col-sm-2 control-label">Preço</label>
	                  <div class="col-sm-10">
	                    <input type="number" class="form-control" name="admin_product_price" required />
	                  </div>
	                </div>
	              </div>
	              <div class="box-footer">
	                <button type="submit" value="Insert" name="admin_db_changes" class="btn btn-default pull-right" >Inserir</button>
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