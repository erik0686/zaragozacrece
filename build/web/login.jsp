<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : May 20, 2015, 3:11:10 PM
    Author     : Lalo Serna
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      

	<head>

                <meta property="fb:app_id"          content="1234567890" /> 
                <meta property="og:type"            content="article" /> 
                <meta property="og:url"             content="http://201.156.168.107:8080/ccz/" /> 
                <meta property="og:title"           content="Creciendo con Zaragoza" /> 
                <meta property="og:image"           content="https://lh5.googleusercontent.com/-1WA5JpxGGF0/VWArUdlDahI/AAAAAAAAA2o/jT9P6kTJuyo/s480-no/Background-04.jpg" /> 
                <meta property="og:description"    content="Sitio web dedicado al grupo estudiantil Creciendo con Zaragoza" />
		<meta charset="utf-8">
                
                
		<title>Creciendo con Zaragoza</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		
		<link rel="stylesheet" href="css/demo.css">
		<link rel="stylesheet" href="css/font-awesome.css">
		<link rel="stylesheet" href="css/sky-tabs.css">
                <link rel="stylesheet" href="css/sky-mega-menu.css">
                <link rel="stylesheet" href="css/sky-forms.css">
		<link rel="stylesheet" href="css/sky-forms-green.css">
                <link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="css/sky-forms-ie8.css">
		<![endif]-->
		
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.form.min.js"></script>
		<script src="js/jquery.validate.min.js"></script>	
		<script src="js/jquery-ui.min.js"></script>
		
		<!--[if lt IE 9]>
			<link rel="stylesheet" href="css/sky-tabs-ie8.css">
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
			<script src="js/sky-tabs-ie8.js"></script>
		<![endif]-->
                
             
 
                
                
                
	</head>
     <%--TABLAS BONITAS   
        <sql:query var="result" dataSource="jdbc/zaragoza">
                        SELECT * FROM admins
                    </sql:query>
    <div class="component">
                    <table
                        <!-- column headers -->
                        <tr>
                        <c:forEach var="columnName" items="${result.columnNames}">
                            <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                        </tr>
                        <!-- column data -->
                        <c:forEach var="row" items="${result.rowsByIndex}">
                            <
                            <tr>
                            <c:forEach var="column" items="${row}">
                                <td><c:out value="${column}"/></td>
                            </c:forEach>
                            
                            </tr>
                            
                        </c:forEach>
                    </table>
        </div>
     --%>
     
        <body class="bg-cyan">
		<div class="body">
		
                    
                    
			<!-- mega menu -->
			<ul class="sky-mega-menu sky-mega-menu-anim-flip sky-mega-menu-response-to-icons">
				<!-- home -->
                                
				<li>
                                    
					<a href="/"><i class="fa fa-single fa-home"></i></a>
                                        
                                        
				</li>
				<!--/ home -->
				
				<!-- about -->
				<li>
                                       <a href="conocenos"><i class="fa fa-star"></i>Conócenos</a>
				</li>
				<!--/ about -->
				
				<!-- Blog -->
				<li>
					<a href="CargarNotas"><i class="fa fa-bullhorn"></i>Entérate</a>
				</li>
				<!--/ Blog -->
				
				<!-- Apartado para apadrinar un niño -->
				<li>
					<a href="Apadrina"><i class="fa fa-arrow-circle-up"></i>Apadrina un niño</a>
                                </li>
				<!--/ Apartado para apadrinar un niño  -->
				
                                <!-- Apartado para iniciar sesión -->
                                    
                                <%--Verifico que exista una sesion de padrino--%>
                                        
                                <li aria-haspopup="true">
                                    <a href=""><i class="fa fa-sign-in"></i>Inicia Sesión<i class="fa fa-indicator fa-chevron-down"></i></a>
                                            
                                    <div class="grid-container3">
                                        <ul>
                                            <li>
                                                <a href="IniciaSesion"><i class="fa fa-user"></i>Padrinos</a>
                                            </li>
                                            <li>
                                                <a href="admin"><i class="fa fa-legal"></i>Admins</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                        
                                        
                                <!--/ Apartado para iniciar sesión -->
				
				<!-- Apartado para contactar  -->
				<li class="right">
					<a href="https://www.facebook.com/Zaragozacrece?fref=ts"><i class="fa fa-facebook"></i>Contáctanos</a>
				</li>
				<!--/ Apartado para contactar -->
				<!--/ Apartado para contactar -->
			</ul>                                       
        
			<!--/ Termina el menú -->

                        <div class="typography">
                                          
                                              <div class="body body-s">		
                                                  <form action="ControlLogInPadrino" method="post" id="sky-form" class="sky-form">
                                                      <header>¿Ya eres padrino? ¡Inicia Sesión!</header>
                                  
                                                      <fieldset>					
                                                          <section>
                                                              <div class="row">
                                                                  <label class="label col col-4">Correo electrónico</label>
                                                                  <div class="col col-8">
                                                                      <label class="input">
                                                                          <i class="icon-append fa fa-user"></i>
                                                                          <input type="email" name="correo">
                                                                      </label>
                                                                  </div>
                                                              </div>
                                                          </section>
                                                              
                                                          <section>
                                                              <div class="row">
                                                                  <label class="label col col-4">Contraseña</label>
                                                                  <div class="col col-8">
                                                                      <label class="input">
                                                                          <i class="icon-append fa fa-lock"></i>
                                                                          <input type="password" name="password">
                                                                      </label>
                                                                      <div class="note"><a href="#sky-form2" class="modal-opener">¿Olvidaste tu contraseña?</a></div>
                                                                  </div>
                                                              </div>
                                                          </section>
                                                          <c:choose>
                                                              <c:when test="${badlogin}">
                                                                  <b><font color="red">Nombre de usuario o password incorrectos</font></b>
                                                                  </c:when>
                                                          </c:choose>
                                                                  
                                                      </fieldset>
                                                      <footer>
                                                          <button type="submit" class="button">Log in</button>
                                                      </footer>
                                                       
                                                  </form>			
                                              </div>
                                                  
                                                 
                  
                                      
                  
                                              <script type="text/javascript">
                                                  $(function()
                                                  {
                                                      // Validation for login form
                                                      $("#sky-form").validate(
                                                              {					
                                                                  // Rules for form validation
                                                          rules:
                                                                  {
                                                                      email:
                                                                      {
                                                                          required: true,
                                                                  email: true
                                                              },
                                                              password:
                                                                      {
                                                                          required: true,
                                                                  minlength: 3,
                                                                  maxlength: 20
                                                              }
                                                          },
                          
                                                          // Messages for form validation
                                                          messages:
                                                                  {
                                                                      email:
                                                                      {
                                                                          required: 'Please enter your email address',
                                                                  email: 'Please enter a VALID email address'
                                                              },
                                                              password:
                                                                      {
                                                                          required: 'Please enter your password'
                                                              }
                                                          },					
                          
                                                          // Do not change code below
                                                          errorPlacement: function(error, element)
                                                          {
                                                              error.insertAfter(element.parent());
                                                          }
                                                      });
                      
                      
                                                      // Validation for recovery form
                                                      $("#sky-form2").validate(
                                                              {					
                                                                  // Rules for form validation
                                                          rules:
                                                                  {
                                                                      email:
                                                                      {
                                                                          required: true,
                                                                  email: true
                                                              }
                                                          },
                          
                                                          // Messages for form validation
                                                          messages:
                                                                  {
                                                                      email:
                                                                      {
                                                                          required: 'Please enter your email address',
                                                                  email: 'Please enter a VALID email address'
                                                              }
                                                          },
                          
                                                          // Ajax form submition					
                                                          submitHandler: function(form)
                                                          {
                                                              $(form).ajaxSubmit(
                                                                      {
                                                                          beforeSend: function()
                                                                  {
                                                                      $('#sky-form button[type="submit"]').attr('disabled', true);
                                                                  },
                                                                  success: function()
                                                                  {
                                                                      $("#sky-form2").addClass('submited');
                                                                  }
                                                              });
                                                          },				
                          
                                                          // Do not change code below
                                                          errorPlacement: function(error, element)
                                                          {
                                                              error.insertAfter(element.parent());
                                                          }
                                                      });
                                                  });			
                                              </script>
                                       
                                         
                                     
                        </div>
                        
                        
			
	        </div>
	</body>	
	
  
</html>