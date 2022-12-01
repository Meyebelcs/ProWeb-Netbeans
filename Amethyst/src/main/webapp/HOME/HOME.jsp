<%-- 
    Document   : HOME
    Created on : 22 nov. 2022, 04:03:34
    Author     : denis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>Amethyst</title>
    <!---ICONSCOUT CDN-->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">
    <!--- STYLESHEET  -->
    <link rel="stylesheet" href="HOME/HOME.css">
    </head>
    <body>
            
     <nav>
         
        <div class="container">
            <div class="profile-photo" id="profile-edit">
                <img src="HOME/images/social logo.png">
            </div>
            <h2 class="log">
                Amethyst
            </h2>
            <div class="search-bar">
                <form action="BusquedaBasica" method="POST">
                <input type="search" placeholder="Escribe aquí aquello que buscas" name="input-search">
                <button><i class="uil uil-search"></i></button>
                </form>
            </div>
            <div class="create">
                <form action="LogOut" method="POST">
                <button type="submit" class=" btn btn-primary">Cerrar Sesión</button>
                </form>

                <div class="click-profile">
                    <div class="profile-photo" id="profile-edit">
                        <img src="UImgController?id=${id}" onclick="openProfileModal()">
                    </div>
                </div>

            </div>
        </div>
    </nav>
    
    <!------------------MAIN--------------------->
    <main>
        <div class="container">
            <!--=====================LEFT===================-->
            <div class="left">
                <a  class="profile" >
                    <div class="profile-photo" >
                        <img src="UImgController?id=${id}">
                    </div>
                    <div class="handle">
                        <h4><%=request.getSession().getAttribute("nombres")%> <%=request.getSession().getAttribute("apellidos")%></h4>
                        <p class="text-muted"> 
                        @<%=request.getSession().getAttribute("usuario")%>
                        </p>
                    </div>
                </a>
            <!---------------------SIDEBAR-------------->
            <div class="sidebar">
                <form action="MasRecientes" method="POST">
                <input type="hidden" id="masRecientes" name="page" value="${page}">
                <a class="menu-item active">
                    <span><i class="uil uil-cloud-heart"></i></span> <button><h3>Más recientes</h3></button>
                </a>
                </form>
                <form action="MasComentadas" method="POST">
                <input type="hidden" id="masComentarios" name="page" value="${page}">
                <a class="menu-item">
                    <span><i class="uil uil-envelope-heart"></i></span> <button><h3>Más comentadas</h3></button>
                </a>
                </form>
                <form action="MasVotadas" method="POST">
                <input type="hidden" id="masVotadas" name="page" value="${page}">
                <a class="menu-item">
                    <span><i class="uil uil-file-heart"></i></span> <button><h3>Más votadas</h3></button>
                </a>
                </form>
                <a class="menu-item" id="notifications">
                    <span><i class="uil uil-bell"><small class="notification-count">9+</small></i></span> <h3>Notificaciones</h3>
                    <!------------------NOTIFICATION POPUP--------------------->
                    <div class="notifications-popup">
                        <div>
                            <div class="profile-photo" >
                                <img src="images/profile-2.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Ever Luis</b> aceptó tu solicitud de amistad
                                <small class="text-muted"> Hace 1 hora</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="HOME/images/profile-3.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Iram Cervantes</b> comentó tu publicación
                                <small class="text-muted"> Hace 1 hora </small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="HOME/images/profile-10.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Gerardo Arias</b> comentó tu publicación
                                <small class="text-muted"> Hace 2 horas </small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="HOME/images/profile-5.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Kevin Mora</b> aceptó tu solicitud de amistad
                                <small class="text-muted"> Hace 2 horas </small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="HOME/images/profile-15.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Boing Eguia</b> comentó tu publicación
                                <small class="text-muted"> Hace 3 horas </small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="HOME/images/profile-11.jpg" >
                            </div>
                            <div class="notification-body">
                                <b> Gael Edgardo</b> comentó tu publicación
                                <small class="text-muted"> Hace 2 días </small>
                            </div>
                        </div>
                    </div>
                    <!------------------END NOTIFICATION POPUP--------------------->
                  
                </a>
                <a class="menu-item" id="messages-notifications">
                    <span><i class="uil uil-envelope-alt" ><small class="notification-count">6</small></i></span> <h3>Mensajes</h3>
                </a>
                <a class="menu-item" id="theme">
                    <span><i class="uil uil-moon"></i></span> <h3>Modo Nocturno</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-setting"></i></i></span> <h3>Configuración</h3>
                </a>

            </div>
            <!--------------------END OF SIDEBAR ---------------------->
            <label for="create-post" style="color:red" class="btn btn-primary">Hacer publicación</label>
            </div>
            <!--------------------------END OF LEFT-------------------->


            <!--=====================MIDDLE===================-->
            <div class="middle">
               
                <!--------------------STORIES----------------------->
                <div class="stories">
                    <div class="story">
                        <div class="profile-photo">
                            <img src="UImgController?id=${id}">
                        </div>
                        <p class="name">Tu historia</p>
                    </div>
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-9.jpg">
                        </div>
                        <p class="name">Ryan Mortdecai</p>
                    </div>
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-10.jpg">
                        </div>
                        <p class="name">Gerardo Arias</p>
                    </div>
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-11.jpg">
                        </div>
                        <p class="name">Gael Edgardo</p>
                    </div>
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-12.jpg">
                        </div>
                        <p class="name">Ileana Salas</p>
                    </div>
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-13.jpg">
                        </div>
                        <p class="name">Denisse Cardoza</p>
                    </div>
                </div>
                <!-----------------------------END OF STORIES--------------------->
                <form action="" class="create-post" method="POST">
                    <div class="profile-photo">
                        <img src="UImgController?id=${id}">
                    </div>
                    <input type="text" placeholder="¿Qué estás pensando?" id="create-post" name="publi" readonly>
                    <!-- comment <button type="submit" class="btn btn-primary" id="btn-create-post" name="btn-create-post">Post</button>--> 
                </form>

                <!-----------------------FEEDS-------------------------->
                <div class="feeds">
                     <!-----------------------FEED 1-------------------------->
                                         
                     <c:set var="spoilerCount" value="0"/>
                     <c:set var="commentCount" value="0"/>
                     
                      <c:forEach items="${publicaciones}" var="publicacion" varStatus="index">
                          <c:set var="isLiked" value="0"/>
                          <c:set var="image" value="${publicacion.hasImage}"/>
                        <c:choose>
                          <c:when test="${(image == true)}">
                             
                    <div class="feed" >      
                             <div class="head">
                            <div class="user">
                                <div class="profile-photo">
                                    <img src="UImgController?id=${publicacion.idUsuario}">
                                </div>
                                <input type="hidden" value="${publicacion.idPublicacion}" id="input-idPubli${index.count}">
                                <input type="hidden" value="${publicacion.hasImage}" id="input-hasImage${index.count}">
                                <input type="hidden" value="${publicacion.spoiler}" id="input-spoiler${index.count}">
                                <input type="hidden" value="${publicacion.texto}" id="input-text${index.count}">
                                <input type="hidden" value="UImgController?id=${publicacion.idUsuario}" id="input-img${index.count}">
                                
                                <div class="ingo">
                                    <h3>${publicacion.username}</h3>
                                    <small>${publicacion.fechaCreacion}</small>
                                </div>
                            </div>
                            <span class="edit">
                                <i class="uil uil-ellipsis-h"></i>
                                 <div class="menu-feed">
                                    <i class="uil uil-pen"></i>
                                     <c:set var = "idUP" value = "${publicacion.idUsuario}"/>
                                     <c:set var = "usuario" value = "${id}"/>
                                     <c:if test = "${idUP == usuario}">
                                    <ul class="menu">
                                        <li ><p id="btn-Edit-Post${index.count}" style="position:center;" >Editar</p></li>
                                        <li ><p id="btn-Eliminar-Post${index.count}" style="position:center;" >Eliminar</p></li>
                                    </ul>
                                      </c:if>
                                </div>
                            </span>
                        </div>
                                 
                          <c:set var="spoiler" value="${publicacion.spoiler}"/>
                        <c:choose>
                          <c:when test="${(spoiler == true)}">  
                              
                            
                          
                       <div class="contenedor-spoiler">     
                        <form class="photo" id="photo-spoiler">
                            
                            <img src="PImgController?id=${publicacion.idPublicacion}">
                            <div id="image-data" class="image-data">
                               
                                <h2 class="image-data_title">Spoiler</h2>
                                <p class="image-data_text">¿Estás seguro de querer ver este contenido?</p>
                                <label class=" btn btn-primary btn-spoiler" id="spoiler-feed" onclick="noSpoiler(${spoilerCount})">Aceptar</label>
                                
                            </div>
                        </form>
                       </div>  
                         
                                  <c:set var="spoilerCount" value="${spoilerCount+1}"/>
                                
                       <div class="contenedor-nospoiler">     
                        <form class="foto" id="photo-spoiler">
                            
                            <img src="PImgController?id=${publicacion.idPublicacion}">
                        
                        </form>
                       </div>  
                        </c:when>
                    <c:otherwise> 
                        
                        <div class="foto" id="photo-spoiler">
                            <img src="PImgController?id=${publicacion.idPublicacion}">
                            <div id="image-data" class="image-data">
                                
                            </div>
                        </div>
                            
                    </c:otherwise>
                    </c:choose>

                        <div class="action-buttons">
                            <div class="interaction-buttons"> 
                                <c:set var = "idLiked" value = "0"/>
                                <c:forEach items="${meGustas}" var="meGusta">
                                <c:set var = "idLike" value = "${meGusta.idUsuario}"/>
                                <c:set var = "idPubliML" value = "${meGusta.idPublicacion}"/>
                                <c:set var = "idPubliL" value = "${publicacion.idPublicacion}"/>
                                <c:set var = "usuarioL" value = "${id}"/>
                                <c:if test="${idLike == usuarioL}">
                                    <c:if test="${idPubliML == idPubliL}">
                                    <c:set var="isLiked" value="${isLiked+1}"/>
                                    <c:set var = "idLiked" value = "${meGusta.idMeGusta}"/>
                                    </c:if> 
                                    
                                </c:if>  
                                </c:forEach>
                                
                                
                                <c:choose>
                                <c:when test="${isLiked > 0}"> 
                                    <form action="DeleteMeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" value="${idLiked}" name="input-idLike">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <button type="submit" id="likeheart${index.count}"><span class="likedHeart"><i class="uil uil-heart"></i></span></button>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
                                </c:when>
                                <c:otherwise> 
                                    <form action="MeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <button type="submit" class="likeHeart" id="likeheart${index.count}"><i class="uil uil-heart"></i></button>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
                                </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="bookmark">
                                <span><i class="uil uil-bookmark"></i></span>
                            </div>
                        </div>
                        
                        <div class="liked-by">
                            <p>Le gusta a <b>${publicacion.meGusta}</b> personas</p>
                        </div>
                      <c:choose>
                      <c:when test="${(spoiler == true)}"> 
                        <div class="caption texto">
                        <p class="hash-tag commentspoiler" > <b>${publicacion.username}</b><b>  </b>${publicacion.texto} </p>
                        </div>
                       </c:when>
                       <c:otherwise> 
                          <div class="caption">
                        <p class="hash-tag" > <b>${publicacion.username}</b><b>  </b>${publicacion.texto} </p>
                        </div>                           
                        </c:otherwise>
                        </c:choose>
                        
                        <div class="comments text-muted" style="cursor: pointer;" id="showComments${index.count}" onclick="MostrarComentarios(${index.index})">Ver los ${publicacion.comentarios} comentarios</div>
                        
                        <!-----------------------COMENTARIOS----------------------->
                       
                        <section class="contenedor-comentarios">
                            <div class="comentarios-usuarios">
                                <!-- comentario principal -->
                                 <c:forEach items="${comentarios}" var="comentario" varStatus="indexC">
                                         <c:set var="commentPubli" value="${comentario.idPublicacion}"/>
                                         <c:set var="PubliId" value="${publicacion.idPublicacion}"/>
                                            <c:if test="${(commentPubli == PubliId)}">
                                <div class="comentario-principal-usuario">
                                    <div class="avatar">
                                        <img src="UImgController?id=${comentario.idUsuario}" alt="img">
                                        </div>
                                    <div class="comentario">
                                        <div class="usuario-comentario">
                                            <div class="texto">
                                            <input type="hidden" value="${comentario.idComentario}" id="input-idC${commentCount}">
                                            <input type="hidden" value="${comentario.texto}" id="input-textC${commentCount}">
                                            <input type="hidden" value="${comentario.spoiler}" id="input-spoilerC${commentCount}">
                                            <input type="hidden" value="${comentario.idPublicacion}" id="input-idPC${commentCount}">
                                                <a href="#" title="" class="nombre-usuario">${comentario.usuario}</a> 
                                                  <c:set var="spoiler" value="${comentario.spoiler}"/>
                                                    <c:choose>
                                                     <c:when test="${(spoiler == true)}">  
                                                        <p class="commentspoiler">${comentario.texto}</p>
                                                     </c:when>
                                                     <c:otherwise> 
                                                        <p class="">${comentario.texto}</p>
                                                     </c:otherwise>
                                                     </c:choose>   
                                                <div class="menu-comentario">
                                                    <i class="uil uil-pen"></i>
                                                    <c:set var = "idUC" value = "${comentario.idUsuario}"/>
                                                    <c:set var = "usuario" value = "${id}"/>
                                                    <c:if test = "${idUC == usuario}">
                                                    <ul class="menu">
                                                        <li><a id="btn-Edit-Comment${commentCount}">Editar</a></li>
                                                        <li><a id="btn-Eliminar-Comment${commentCount}">Eliminar</a></li>
                                                    </ul>
                                                    </c:if>
                                                </div>
                                            </div>
                                            <div class="botones-comentario">
                                                <span class="tiempo-comentario">
                                                    ${comentario.fechaCreacion}
                                                </span>
                                            </div>
                                        </div>
                                            
                                    </div>
                                </div>
                                    <c:set var="commentCount" value="${commentCount+1}"/>
                                 
                              </c:if>
                              </c:forEach>      
                        
                                <div class="comentar-publicacion">
                                    <div class="avatar">
                                        <img src="UImgController?id=${id}" alt="img">
                                    </div>
                                   <form action="ComentarioController" method="post" class="comentar-comentario" >
                                       <input type="hidden" name="idCP" value="${publicacion.idPublicacion}">
                                    <input type="hidden" id="pageC" name="pageC" value="${page}">
                                    <input type="hidden" id="sectionC" name="sectionC" value="${section}">
                                       <input required type="text" name="textC" id="textC${index.count}" value="" placeholder="">
                                       <button type="submit" class="btn btn-primary">
                                        <center>
                                        <i class="uil uil-message"></i>
                                        </center>
                                       </button>
                                        <div style="margin-left: 10px;">
                                        <p>Spoiler</p>
                                        <center>
                                        <input class="input_spoiler" type="checkbox" id="spoilerC" name="spoilerC">
                                        </center>
                                       </div>
                                   </form>
                                  

                                </div>
                                
                            </div>
                        
                            
                        </section>
                        

                    </div>
                                  
                             
                       
                     
                    </c:when>
                    <c:otherwise> 
                        
                      <div class="feed" id="${publicacion.idPublicacion}">
                        <div class="head">
                            <div class="user">
                                <div class="profile-photo">
                                    <img src="UImgController?id=${publicacion.idUsuario}">
                                    
                                <input type="hidden" value="${publicacion.idPublicacion}" id="input-idPubli${index.count}">
                                <input type="hidden" value="${publicacion.hasImage}" id="input-hasImage${index.count}">
                                <input type="hidden" value="${publicacion.spoiler}" id="input-spoiler${index.count}">
                                <input type="hidden" value="${publicacion.texto}" id="input-text${index.count}">
                                <input type="hidden" value="UImgController?id=${publicacion.idUsuario}" id="input-img${index.count}">
                                                                    
                                </div>
                                <div class="ingo">
                                    <h3>${publicacion.username}</h3>
                                    <small>${publicacion.fechaCreacion}</small>
                                </div>
                                
                            </div>
                            <span class="edit">
                                <i class="uil uil-ellipsis-h"></i>
                                <div class="menu-feed">
                                    <i class="uil uil-pen"></i>
                                    <c:set var = "idUP" value = "${publicacion.idUsuario}"/>
                                     <c:set var = "usuario" value = "${id}"/>
                                     <c:if test = "${idUP == usuario}">
                                    <ul class="menu">
                                        <li ><p id="btn-Edit-Post${index.count}"  style="position:center;" >Editar</p></li>
                                        <li ><p id="btn-Eliminar-Post${index.count}" style="position:center;" >Eliminar</p></li>
                                    </ul>
                                    </c:if>
                                </div>
                            </span>
                        </div>
                         <c:set var="spoiler2" value="${publicacion.spoiler}"/>      
                         <c:choose>
                      <c:when test="${(spoiler2 == true)}"> 
                        <div class="caption texto">
                            <p class="commentspoiler">${publicacion.texto}</p>
                        </div>
                       </c:when>
                       <c:otherwise> 
                         <div class="caption">
                            <br><p class="">${publicacion.texto}</p>
                        </div>                          
                        </c:otherwise>
                        </c:choose>
                        

                        

                        <div class="action-buttons">
                            <div class="interaction-buttons">
                                <c:set var = "idLiked" value = "0"/>
                                 <c:forEach items="${meGustas}" var="meGusta">
                                <c:set var = "idLike" value = "${meGusta.idUsuario}"/>
                                <c:set var = "idPubliML" value = "${meGusta.idPublicacion}"/>
                                <c:set var = "idPubliL" value = "${publicacion.idPublicacion}"/>
                                <c:set var = "usuarioL" value = "${id}"/>
                                <c:if test="${idLike == usuarioL}">
                                    <c:if test="${idPubliML == idPubliL}">
                                    <c:set var="isLiked" value="${isLiked+1}"/>
                                    <c:set var = "idLiked" value = "${meGusta.idMeGusta}"/>
                                    </c:if> 
                                    
                                </c:if>  
                                </c:forEach>
                                
                                
                                <c:choose>
                                <c:when test="${isLiked > 0}"> 
                                    <form action="DeleteMeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" value="${idLiked}" name="input-idLike">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <button type="submit" class="likedHeart" id="likeheart${index.count}"><i class="uil uil-heart"></i></button>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
                                </c:when>
                                <c:otherwise> 
                                    <form action="MeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <button type="submit" class="likeHeart" id="likeheart${index.count}"><i class="uil uil-heart"></i></button>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
                                </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="bookmark">
                                <span><i class="uil uil-bookmark"></i></span>
                            </div>
                        </div>
                        
                        <div class="liked-by">
                            <p>Le gusta a <b>${publicacion.meGusta}</b> personas</p>
                        </div>

                        <div class="comments text-muted" style="cursor: pointer;" id="showComments" onclick="MostrarComentarios(${index.index})">Ver los ${publicacion.comentarios} comentarios</div>

                         <!-----------------------COMENTARIOS----------------------->
                       
                        <section class="contenedor-comentarios">
                            <div class="comentarios-usuarios">
                                <!-- comentario principal -->
                                 <c:forEach items="${comentarios}" var="comentario" varStatus="indexC">
                                         <c:set var="commentPubli" value="${comentario.idPublicacion}"/>
                                         <c:set var="PubliId" value="${publicacion.idPublicacion}"/>
                                            <c:if test="${(commentPubli == PubliId)}">
                                <div class="comentario-principal-usuario">
                                    <div class="avatar">
                                        <img src="UImgController?id=${comentario.idUsuario}" alt="img">
                                        </div>
                                    <div class="comentario">
                                        <div class="usuario-comentario">
                                            <div class="texto">
                                            <input type="hidden" value="${comentario.idComentario}" id="input-idC${commentCount}">
                                            <input type="hidden" value="${comentario.texto}" id="input-textC${commentCount}">
                                            <input type="hidden" value="${comentario.spoiler}" id="input-spoilerC${commentCount}">
                                            <input type="hidden" value="${comentario.idPublicacion}" id="input-idPC${commentCount}">
                                                <a href="#" title="" class="nombre-usuario">${comentario.usuario}</a> 
                                                  <c:set var="spoiler" value="${comentario.spoiler}"/>
                                                    <c:choose>
                                                     <c:when test="${(spoiler == true)}">  
                                                        <p class="commentspoiler">${comentario.texto}</p>
                                                     </c:when>
                                                     <c:otherwise> 
                                                        <p class="">${comentario.texto}</p>
                                                     </c:otherwise>
                                                     </c:choose>   
                                                <div class="menu-comentario">
                                                    <i class="uil uil-pen"></i>
                                                    <c:set var = "idUC" value = "${comentario.idUsuario}"/>
                                                    <c:set var = "usuario" value = "${id}"/>
                                                    <c:if test = "${idUC == usuario}">
                                                    <ul class="menu">
                                                        <li><a id="btn-Edit-Comment${commentCount}">Editar</a></li>
                                                        <li><a id="btn-Eliminar-Comment${commentCount}">Eliminar</a></li>
                                                    </ul>
                                                    </c:if>
                                                </div>
                                            </div>
                                            <div class="botones-comentario">
                                                <span class="tiempo-comentario">
                                                    ${comentario.fechaCreacion}
                                                </span>
                                            </div>
                                        </div>
                                            
                                    </div>
                                </div>
                                    <c:set var="commentCount" value="${commentCount+1}"/>
                                 
                              </c:if>
                              </c:forEach>      
                        
                                <div class="comentar-publicacion">
                                    <div class="avatar">
                                        <img src="UImgController?id=${id}" alt="img">
                                    </div>
                                   <form action="ComentarioController" method="post" class="comentar-comentario">
                                       <input type="hidden" name="idCP" value="${publicacion.idPublicacion}">
                                    <input type="hidden" id="pageC" name="pageC" value="${page}">
                                    <input type="hidden" id="sectionC" name="sectionC" value="${section}">
                                       <input required type="text" name="textC" value="" placeholder="">
                                       <button type="submit" class="btn btn-primary">
                                        <center>
                                        <i class="uil uil-message"></i>
                                        </center>
                                       </button>
                                        <div style="margin-left: 10px;">
                                        <p>Spoiler</p>
                                        <center>
                                        <input class="input_spoiler" type="checkbox" id="spoilerC" name="spoilerC">
                                        </center>
                                       </div>
                                   </form>
                                  

                                </div>
                                
                            </div>
                        
                            
                        </section>

                    </div>
                    
                    </c:otherwise>
                    </c:choose>
                 </c:forEach>
                     
                     
                    <!------------------------------END OF FEED--------------------------->                 
                </div>
                <!------------------------------END OF FEEDS------------------->
               
                <div class="final-buts">
                    <form action="PaginacionAntController" method="POST">
                        <input type="hidden" id="AntPage" name="page" value="${page}">
                        <input type="hidden" id="AntSection" name="section" value="${section}">
                        <c:if test="${page-1>0}">
                        <button type="submit" class=" btn btn-primary final-buttons" id="Anterior">Anterior</button>
                        </c:if>
                    </form>
                    <form action="PaginacionDespController" method="POST">
                        <input type="hidden" id="DespPage" name="page" value="${page}">
                        <input type="hidden" id="DespSection" name="section" value="${section}">
                        <c:if test="${desp==1}">
                        <button type="submit" class=" btn btn-primary final-buttons" id="Siguiente">Siguiente</button>
                        </c:if>
                        </form>
                </div>
            </div>
            <!--============================END OD MIDDLE==============================-->

            <!--=====================RIGHT===================-->
            <div class="right">
                <div class="messages">
                    <div class="heading">
                        <h4>Messages</h4><i class="uil uil-edit"></i>
                    </div>
                    <!---------------------SEARCH BAR------------------>
                    <div class="search-bar">
                        <i class="uil uil-search"></i>
                        <input type="search" placeholder="Search messages" id="message-search">
                    </div>
                     <!---------------------MESSAGES CATEGORY------------------>
                     <div class="category">
                        <h6 class="active">Primary</h6>
                        <h6>General</h6>
                        <h6 class="message-requests">Request(7)</h6>
                     </div>
                      <!-----------------------MESSAGE-------------------->
                      <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-6.jpg">
                        </div>
                        <div class="message-body">
                            <h5>Gal Vamp</h5>
                            <p class="text-bold">ok</p>
                        </div>
                     </div>
                     <!-----------------------MESSAGE-------------------->
                     <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-17.jpg">
                        </div>
                        <div class="message-body">
                            <h5>Mel Vielma</h5>
                            <p class="text-bold">2 nuevos mensajes</p>
                        </div>
                     </div>
                     <!-----------------------MESSAGE-------------------->
                     <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-20.jpg">
                        </div>
                        <div class="message-body">
                            <h5>Elías Rodriguez</h5>
                            <p class="text-muted">Irás a la fiesta de halloween?</p>
                        </div>
                     </div>
                     <!-----------------------MESSAGE-------------------->
                     <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-18.jpg">
                            <div class="active"></div> 
                        </div>
                        <div class="message-body">
                            <h5>Adrián Rivera</h5>
                            <p class="text-muted">Estás libre mañana?</p>
                        </div>
                     </div>
                 <!-----------------------MESSAGE-------------------->
                     <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-9.jpg">
                            <div class="active"></div> 
                        </div>
                        <div class="message-body">
                            <h5>Ryan Mortdecai</h5>
                            <p class="text-bold">Al fin lo encontré!!</p>
                        </div>
                     </div>
                 <!-----------------------MESSAGE-------------------->
                     <div class="message">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-3.jpg">
                            <div class="active"></div> 
                        </div>
                        <div class="message-body">
                            <h5>Iram Cervantes</h5>
                            <p class="text-muted">Un fort o q?</p>
                        </div>
                     </div>
                </div>
                <!---------------END OF MESSAGES------------------------->

            
                <!---------------FRIEND REQUESTS------------------------->
                <div class="friend-requests">
                    <h4>Requests</h4>
                    <div class="request">
                        <div class="info">
                            <div class="profile-photo">
                                <img src="HOME/images/profile-19.jpg" alt="">
                            </div>
                            <div>
                                <h5>Fernanda Guerra</h5>
                                <p class="text-muted">
                                   8 amigos en común 
                                </p>
                            </div>
                        </div>
                        <div class="action">
                            <button class="btn btn-primary">
                                Aceptar
                            </button>
                            <button class="btn">
                                Rechazar
                            </button>
                        </div>
                    </div>

                    <div class="request">
                        <div class="info">
                            <div class="profile-photo">
                                <img src="HOME/images/profile-8.jpg" alt="">
                            </div>
                            <div>
                                <h5>Monica Lizeth</h5>
                                <p class="text-muted">
                                   29 amigos en común 
                                </p>
                            </div>
                        </div>
                        <div class="action">
                            <button class="btn btn-primary">
                                Aceptar
                            </button>
                            <button class="btn">
                                Rechazar
                            </button>
                        </div>
                    </div>

                    <div class="request">
                        <div class="info">
                            <div class="profile-photo">
                                <img src="HOME/images/profile-16.jpg" alt="">
                            </div>
                            <div>
                                <h5>Sebastian Rodriguez</h5>
                                <p class="text-muted">
                                   42 amigos en común 
                                </p>
                            </div>
                        </div>
                        <div class="action">
                            <button class="btn btn-primary">
                                Aceptar
                            </button>
                            <button class="btn">
                                Rechazar
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!--=========================END OF RIGHT=========================-->
        </div>
    </main>

<!--=================NIGHT MODE====================-->
<div class="customize-theme">
    <div class="card">
        <h2>Modo Nocturno</h2>
        <p class="texted-muted">Personaliza la vista de tu cuenta</p>

        <!-------------BACKGROUND COLORS-------------->
        <div class="background">
            <h4>Background</h4>
            <div class="choose-bg">
                <div class="bg-1 active">
                    <span></span>
                    <h5 for="bg-1">Light</h5>
                </div>
                <div class="bg-2">
                    <span></span>
                    <h5 >Dim</h5>
                </div>
                <div class="bg-3">
                    <span></span>
                    <h5 for="bg-3">Lights Out</h5>
                </div>
            </div>
        </div>
    </div>
</div>

<!--=================SHOW PROFILE====================-->
<div class="see-profile" id="see-profile">
    <div class="card">
        <!------------- PROFILE INFO-------------->
        <div class="profile-info">
           
            <form id="form-profile" class="formulario_register">

                <center>
                    <div class="profile-photo" >
                        <img src="UImgController?id=${id}" alt="">
                    </div>
                </center>

                <h2>@<%=request.getSession().getAttribute("usuario")%></h2>
                <p class="texted-muted">Datos personales</p>
               
                <div class="form-control">
                    <p>Nombres</p>
                    <input type="text" id="nombres" value="<%=request.getSession().getAttribute("nombres")%>" onkeypress="return validaLetras(event);" readonly>
                </div>
                <div class="form-control">
                    <p>Apellidos</p>
                    <input type="text" id="apellidos" value="<%=request.getSession().getAttribute("apellidos")%>" onkeypress="return validaLetras(event);" readonly>
                    </div>
                <div class="form-control">
                    <p>Correo Electrónico</p>
                    <input type="email" id="Correo" value="<%=request.getSession().getAttribute("email")%>" readonly>
                </div>
               <div class="form-control">
                    <p>Edad</p>
                    <input type="text" name=""  class="input_fecha" id="fecha" value="<%=request.getSession().getAttribute("edad")%>" readonly>
               </div>
               <button type="button" class=" btn btn-profile-info" id="Edit-Info">Editar datos</button>
               
                
                
                <!--   
                    <label class=" btn btn-profile-info" type="submit"  for="Save-Changes">Guardar cambios</label>
                    <button type="subtmit" id="registerf" >Guardar cambios</button>
                    <p class="warnings" id="warnings">gtgt</p> 
                -->
            </form>
        </div>
    </div>
</div>

<!--=================EDIT PROFILE====================-->
<div class="customize-profile">
    <div class="card">
        <!------------- PROFILE INFO-------------->
        <div class="profile-info">
           
            <form action="UpdateUsuarioController" id="form-Editprofile" method ="post" class="formulario_register" enctype='multipart/form-data'>

                <center>
                    <div class="profile-photo" >
                        <img src="UImgController?id=${id}" alt="">
                    </div>
                </center>

                <h2>@<%=request.getSession().getAttribute("usuario")%></h2>
                <p class="texted-muted">Datos personales</p>
               
                <div class="form-control">
                    <input type="text" id="nombresE" name="nombresE" value="<%=request.getSession().getAttribute("nombres")%>" onkeypress="return validaLetras(event);" >
                    <div class="alertRed-empty">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>El campo no puede estar vacio</p>
                 </div>
                    <div class="alertRed-invalid-characters">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>Carácteres no inválidos</p>
                 </div>
                </div>
                <div class="form-control">
                    <input type="text" id="apellidosE" name="apellidosE" value="<%=request.getSession().getAttribute("apellidos")%>" onkeypress="return validaLetras(event);">
                   <div class="alertRed-empty">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>El campo no puede estar vacio</p>
                 </div>
                        <div class="alertRed-invalid-characters">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>Carácteres no inválidos</p>
                 </div>
                </div>
                <div class="form-control">
                    <input type="email" id="CorreoE" name="CorreoE" value="<%=request.getSession().getAttribute("email")%>">
                    <div class="alertRed-empty">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>El campo no puede estar vacio</p>
                 </div>
                    <div class="alertRed-invalid-email">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>El correo electrónico no es válido</p>
                 </div>
                </div>
               
                <div class="form-control">
                    <input type="password" id="ContraseñaE" name="ContraseñaE" value="<%=request.getSession().getAttribute("contraseña")%>">
                    <div class="alertRed-empty">
                    
                    <p>El campo no puede estar vacio</p>
                 </div>
                         <div class="alertRed-password-number">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>La contraseña debe contener al menos un número</p>
                 </div>
                      <div class="alertRed-password-mayus">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>La contraseña debe contener al menos una mayúscula</p>
                 </div>
                    <div class="alertRed-password-minus">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>La contraseña debe contener al menos una minúscula</p>
                 </div>
                               <div class="alertRed-password-sign">
                    
                    <p>La contraseña debe contener al menos un signo de puntuación</p>
                 </div>
                      <div class="alertRed-password-8">
                    
                    <p>La contraseña debe contener al menos 8 caracteres</p>
                 </div> 
                  
                </div>

                <div class="form-control">
                    <input type="password" id="ConfirmarContraseñaE" name="ConfirmarContraseñaE" value="<%=request.getSession().getAttribute("contraseña")%>">
                   <div class="alertRed-empty">
                    <p>El campo no puede estar vacio</p>
                 </div>
                   <div class="alertRed-password-invalid">
                    <p>La contraseña no coincide</p>
                 </div>
                </div>
                <div class="form-control">
                    <p>Fecha de nacimiento</p>
                    
                    <input type="date"  id="fechaE" class="input_fecha" name="fechaE" value="<%=request.getSession().getAttribute("fechaNacimiento")%>">
                    <div class="alertRed">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>Debe ser mayor a 13 años</p>
                    </div>
                </div>
                <div class="form-control">
                    <p>Foto de perfil</p>
                   <div class="alertRed-empty">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>El campo no puede estar vacio</p>
                 </div>
                    <input accept="image/*" class="input_foto" type="file" id="fotoE" name="fotoE" value="null">
                </div>
                <button class=" btn btn-profile-info" type="subtmit" id="Save-Changes" >Guardar cambios</button>
                
                
                <!--   
                    <label class=" btn btn-profile-info" type="submit"  for="Save-Changes">Guardar cambios</label>
                    <button type="subtmit" id="registerf" >Guardar cambios</button>
                    <p class="warnings" id="warnings">gtgt</p> 
                -->
            </form>
        </div>
    </div>
</div>
<!--=================MAKE PUBLICATION====================-->

<div class="customize-publication">
    <div class="card">
        <!------------- PUBLICATION INFO-------------->
        <div class="publi-info">
           
            <form action="Publicacion" id="form-publication" method ="post" class="formulario_register" enctype='multipart/form-data'>

                <h2 class="texted-muted">Crear publicación</h2>
               
                <div class="form-control">
                    <input type="text" id="textoP" name="textoP" class="textoP" placeholder="¿Qué estás pensando?">
                   
                </div>
                
                <div class="form-control">
                    <p>Foto</p>
                   <input accept="image/*" class="input_foto" type="file" id="fotoP" name="fotoP" value="null">
                    <p>Spoiler</p>
                    <input class="input_spoiler" type="checkbox" id="spoiler" name="spoiler">
                </div>
                <button class=" btn btn-profile-info" type="subtmit" id="publish" >Publicar</button>
                 <button class=" btn btn-profile-info" type="button" id="Close" >Cerrar</button>
                  <div class="alertRed">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>Llena alguno de los campos para editar publicación</p>
                 </div>
            </form>
        </div>
    </div>
</div>

<!--=================EDIT PUBLICATION====================-->

<div class="customize-publication-edit">
    <div class="card">
        <!------------- PUBLICATION INFO-------------->
        <div class="publi-info">
           
            <form action="UpdatePublicacionControler" id="form-Editpublication" method ="post" class="formulario_register" enctype='multipart/form-data'>

                <h2 class="texted-muted">Editar publicación</h2>
                 <input type="hidden" id="pageEP" name="pageEP" value="${page}">
                 <input type="hidden" id="sectionEP" name="sectionEP" value="${section}">
                 <input type="hidden" id="idPubliEP" name="idPubliEP">
                 <input type="hidden" id="hasImageEP" name="hasImageEP">
                <div class="form-control">
                    <input type="text" id="textoEP" name="textoEP" class="textoEP" placeholder="aqui va el texto o vacio segun la base de datos">
                  </div>

                <div class="photo-edit-post">
                    <img hidden id="imgEP" class="edit-pic" src="/HOME/images/feed-1.jpg">
                </div>
                
                
                <div class="form_control">   
                    <input accept="image/*" class="input_foto" type="file" id="fotoEP" name="fotoEP" value="null">
                    <p>Spoiler</p>
                    <input class="input_spoiler" type="checkbox" id="spoilerEditP" name="spoilerEditP">
                </div>
                <button class=" btn btn-profile-info" type="subtmit" id="publish" >Guardar</button>
                 <button class=" btn btn-profile-info" type="button" id="EditCloseP" >Cancelar</button>
                 <div class="alertRed">
                    <i class="uil uil-exclamation-circle"></i>
                    <p>Llena alguno de los campos para editar publicación</p>
                 </div>
            </form>
        </div>
    </div>
</div>

<!--=================DELETE POST====================-->
<div class="customize-delete-post">
    <div class="card">
        <form action="DeletePublicationController" method="POST">
            <h2>Eliminar Publicación</h2>
            <input type="hidden" id="idPubliDP" name="idPubliDP">
            <input type="hidden" id="pageDP" name="pageDP" value="${page}">
            <input type="hidden" id="sectionDP" name="sectionDP" value="${section}">
            <p class="texted-muted">¿Seguro que desea eliminar esta publicación?</p>

            <button class=" btn btn-profile-info" type="subtmit" id="Delete-post" >Eliminar</button>
            <button class=" btn btn-profile-info" type="button" id="DeleteClose" >Cancelar</button>
        </form>
    </div>
</div>

<!--=================DELETE COMMENT====================-->
<div class="customize-delete-comment">
    <div class="card">
         <form action="DeleteCommentController" method="POST">
        <h2>Eliminar Comentario</h2>
               <input type="hidden" id="idCommentDC" name="idCommentDC">
                 <input type="hidden" id="pageDC" name="pageDC" value="${page}">
                 <input type="hidden" id="sectionDC" name="sectionDC" value="${section}">
        <p class="texted-muted">¿Seguro que desea eliminar este comentario?</p>

        <button class=" btn btn-profile-info" type="submit" id="Delete-comment" >Eliminar</button>
        <button class=" btn btn-profile-info" type="button" id="DeleteClosecomment" >Cancelar</button>
        </form>
    </div>
</div>
<!-- comment -->

<!--=================EDIT COMMENT====================-->
<div class="customize-comment-edit">
    <div class="card">
        <!------------- PUBLICATION INFO-------------->
        <div class="customize-edit-comment">
           
            <form action="UpdateCommentController" id="form-Editcomment" method ="post" class="formulario_register" enctype='multipart/form-data'>

                <h2 class="texted-muted">Editar comentario</h2>
                 <input type="hidden" id="pageEC" name="pageEC" value="${page}">
                 <input type="hidden" id="sectionEC" name="sectionEC" value="${section}">
               <input type="hidden" id="idCommentEC" name="idCommentEC">
               <input type="hidden" id="idPubliEC" name="idPubliEC">
                <div class="form-control">
                        <input type="text" required oninvalid="this.setCustomValidity('No puedes dejar vacia la caja de comentario!!!')" id="textoEditC" name="textoEditC" class="textoC" >
                        <i class="icon check-circle">
                            <svg s
                            xmlns="http://www.w3.org/2000/svg" 
                            width="1em" 
                            height="1em" 
                            viewBox="0 0 512 512">
                            <path 
                            d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm113-303L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/></svg>
                        </i>
                        <i class="icon exclamation-circle">
                            <svg 
                            xmlns="http://www.w3.org/2000/svg" 
                            width="1em" 
                            height="1em" 
                            viewBox="0 0 512 512">
                            <path
                            d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm0-384c13.3 0 24 10.7 24 24v112c0 13.3-10.7 24-24 24s-24-10.7-24-24V152c0-13.3 10.7-24 24-24zm32 224c0 17.7-14.3 32-32 32s-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32z"/></svg>
                        </i>
                        <small class="small_register">Error message</small>

                    <p>Spoiler</p>
                    <input class="input_spoiler" type="checkbox" id="spoilerEC" name="spoilerEC">
                </div>
                <button class=" btn btn-profile-info" type="subtmit" id="Edit-comment" >Guardar</button>
                 <button class=" btn btn-profile-info" type="button" id="EditClosecomment" >Cancelar</button>
            </form>
        </div>
    </div>
 </div>
<!---------------------------FOOTER--------------------------->
<div class="footer-content">

</div>
<footer>
    <div class="footer-content">
       
        <h2> <b>Facultad de Ciencias Físico Matemáticas</b> </h2>
        <h3>Programación Web</h3>
        <h1>1904119 Melany Arleth Jiménez Gómez </h1>
        <h1>1896868 Denisse Alejandra Cardoza Pezina </h1>
        <ul class="socials">
            <li><a href="#"><i class="uil uil-facebook"></i></i></a></li>
            <li><a href="#"><i class="uil uil-twitter"></i></i></a></li>
            <li><a href="#"><i class="uil uil-youtube"></i></i></a></li>
        </ul>
    </div>
    <div class="footer-bottom">
        <p>copyright &copy;2022 codeOpacity. designed by <span>Meyebelcs</span></p>
    </div>
</footer>


    <script src="./HOME/HOME.js"></script>

    </body>
</html>
