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
        <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	
        <!--[if lt IE 9]>
                <link rel="stylesheet" href="css/sky-forms-ie8.css">
        <![endif]-->
        
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.form.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>	
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/modernizr.js"></script>
                    
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
    
    <c:choose>
        <c:when test="${sessionScope.goodlogin}">
            <body class="bg-cyan">
                <div class="body">
                    
                    <!-- mega menu -->
                    <ul class="sky-mega-menu">
                        
                                                <li>
                                    
                            <a href="InterfazAdmin"><i class="fa fa-single fa-home"></i></a>
                                        
                                        
			</li>
                        <!-- Apadrinados -->
                        
                        <li aria-haspopup="true">
                            <a href="#"><i class="fa fa-users"></i>Apadrinados<i class="fa fa-indicator fa-chevron-down"></i></a> 
                                        
                            <div class="grid-container3">
                                <ul>
                                    <li>
                                        <a href="nuevoApadrinado"><i class="fa fa-plus-circle"></i>Añadir Apadrinado</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-bar-chart-o"></i>Nueva entrada de apadrinado</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-gears"></i>Editar apadrinados</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-table"></i>Apadrinados registrados</a>
                                    </li>
                                </ul>
                            </div>
                                                                    
                        </li>
                        <!--/ Apadrinados -->
                        
                        <!-- Padrinos -->
                        
                        <li aria-haspopup="true">
                            <a href="#"><i class="fa fa-user"></i>Padrinos<i class="fa fa-indicator fa-chevron-down"></i></a> 
                                        
                            <div class="grid-container3">
                                <ul>
                                    <li>
                                        <a href="#"><i class="fa fa-lightbulb-o"></i>Asignar apadrinados a padrinos</a>
                                    </li>
                                                                                    
                                    <li>
                                        <a href="#"><i class="fa fa-money"></i>Asignar pagos</a>
                                    </li>
                                                                                    
                                    <li>
                                        <a href="#"><i class="fa fa-table"></i>Padrinos registrados</a>
                                    </li>
                                                                                    
                                </ul>
                            </div>
                                                                    
                        </li>
                        <!--/ Padrinos -->
                        
                        <!-- Apartado para apadrinar un niño -->
                        
                        <li>
                            <a href="Notas"><i class="fa fa-comments-o"></i>Añadir Nota</a>
                            
                        </li>
                        
                        <!--/ Apartado para apadrinar un niño  -->
                        
                        <!-- Mi cuenta,esto es si existe sesion -->
                        
                        
                        
                        
                        <!-- Mi cuenta,esto es si existe sesion -->
                        
                        <!-- Apartado para cerrar sesión -->
                        <li>
                                    
                            <a href="ControlAdminLogIn?logout=${"true"} "><i class="fa fa-sign-out"></i>Cierra Sesión</a>
                            
                            
                        </li>
                        <!--/ Apartado para cerrar sesión -->
                        
                        
                    </ul>
                </div>
                    <!--/ Termina el menú -->
                    
                    <!--/ Cargo los apadrinados que se van a editar -->
                        
                    <div class="body"> 
                        
                        
                        <c:choose>
                            <c:when test="${exito eq 'true'}">
                                <br>
                                <b><font color="white">Listo! Se ha añadido exitosamente esa entrada al apadrinado de ID ${idApadrinadoEntrada}!</font></b>
                                </c:when>
                            </c:choose> 
                                
                                
                        <div class="component">
                            <table>
                                <tr>
                                    <c:forEach items="${nombreColumnas}" var="columnas" >
                                        <th><c:out value="${columnas}"/></th>
                                        </c:forEach>
                                </tr>
                                <!-- column data -->
                                <c:forEach items="${apadrinados}" var="item" >
                                    <tr>
                                        <td><c:out value="${item.idApadrinado}"/>
                                            <input type="hidden" name="idApadrinado" value="${item.idApadrinado}">
                                        </td>
                                        <td><c:out value="${item.nombreCompleto}"/>
                                            <input type="hidden" name="nombreCompleto" value="${item.nombreCompleto}">
                                        </td>
                                        <td><c:out value="${item.comunidad}"/>
                                            <input type="hidden" name="comunidad" value="${item.comunidad}">
                                        </td>
                                        <c:choose>
                                            <c:when test="${item.idPadrino != -1 || item.idPareja!= -1}">
                                                <td><c:out value="Sí"/></td>
                                            </c:when>
                                            <c:otherwise>
                                                <td><c:out value="No"/></td>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${item.idApadrinado == idApadrinadoEntrada}">
                                            </c:when>  
                                            <c:otherwise>
                                                <td><a href="apadrinados?tipo=${"redirigirNuevaEntrada"}&idApadrinado=${item.idApadrinado}&nombreCompleto=${item.nombreCompleto}&comunidad=${item.comunidad}">
                                                        <button type="button" class="button-table">Añadir Entrada</button></a></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                    
                                                    
                                    </tr>
                                        
                                </c:forEach>
                            </table>
                        </div>
                            
                        <input type="hidden" name="tipo" value="redirigirNuevaEntrada">
                            
                            
                        <div class="sky-tabs sky-tabs-pos-top-left sky-tabs-response-to-icons">
                            
                            <section>
                                
                                <nav role="navigation"> 
                                    <ul class="cd-pagination">
                                        
                                        <%--For displaying Previous link except for the 1st page --%>
                                        <c:if test="${paginaActual != 1}">
                                            <li><a href="apadrinados?tipo=${"cargarApadrinados"}?paginaActual=${paginaActual - 1}">Anterior</a></li>
                                            </c:if>
                                                
                                        <c:forEach begin="1" end="${numPaginas}" var="i">
                                            <c:choose>
                                                <c:when test="${paginaActual eq i}">
                                                    <li><a class="current">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li><a href="apadrinados?tipo=${"cargarApadrinados"}?paginaActual=${i}">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                                
                                        <c:if test="${paginaActual != numPaginas}">
                                            <li><a href="apadrinados?tipo=${"cargarApadrinados"}?paginaActual=${paginaActual + 1}">Siguiente</a></li>
                                            </c:if>
                                                
                                    </ul>
                                </nav> 
                                    
                                    
                            </section>
                                
                            <!--/ tabs -->
                                
                                
                        </div>
                    </div>
                        
                        
                    
                    
            </body>
            
            
        </c:when>
        <c:when test="${sessionScope.goodlogin==false}">
            <jsp:forward page = "admin" />
        </c:when>
    </c:choose>  
    
    
         
         
</html>

<%--
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Hello World!</h1>
    <form name="Name Input Form" action="webcontroller/response.jsp">
        <input type="text" name="name" />
        <input type="submit" value="OK"/> 
    </form>
    <h2>wass</h2>
</body>
</html>
--%>