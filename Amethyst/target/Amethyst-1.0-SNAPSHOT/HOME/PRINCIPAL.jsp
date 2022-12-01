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
            <div class="profile-photo" >
                <img src="HOME/images/social logo.png" id="profile-edit">
            </div>
            <h2 class="log">
                Amethyst
            </h2>
            <div class="search-bar">
                <form action="BusquedaBasicaP" method="POST">
                <input type="search" placeholder="Escribe aquí aquello que buscas" name="input-search">
                <button><i class="uil uil-search"></i></button>
                </form>
            </div>
            <div class="create">
                <form action="LogIn" method="POST">
                <button type="submit" class=" btn btn-primary">Iniciar Sesión</button>
                </form>

                <div class="click-profile">
                    <div class="profile-photo" id="profile-edit">
                        <img src="HOME/images/default.jpg">
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
                        <img src="HOME/images/default.jpg">
                    </div>
                    <div class="handle">
                        <h4>Bienvenido</h4>
                        <p class="text-muted"> 
                        </p>
                    </div>
                </a>
            <!---------------------SIDEBAR-------------->
            <div class="sidebar">
                <form action="MasRecientesP" method="POST">
                <input type="hidden" id="masRecientes" name="page" value="${page}">
                <a class="menu-item active">
                    <span><i class="uil uil-cloud-heart"></i></span> <button><h3>Más recientes</h3></button>
                </a>
                </form>
                <form action="MasComentadasP" method="POST">
                <input type="hidden" id="masComentarios" name="page" value="${page}">
                <a class="menu-item">
                    <span><i class="uil uil-envelope-heart"></i></span> <button><h3>Más comentadas</h3></button>
                </a>
                </form>
                <form action="MasVotadasP" method="POST">
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
            <label for="create-post" class="btn btn-primary">Hacer publicación</label>
            </div>
            <!--------------------------END OF LEFT-------------------->


            <!--=====================MIDDLE===================-->
            <div class="middle">
               
                <!--------------------STORIES----------------------->
                <div class="stories">
                    <div class="story">
                        <div class="profile-photo">
                            <img src="HOME/images/profile-12.jpg">
                        </div>
                        <p class="name">Mario Cardoza</p>
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
                        <img src="HOME/images/default.jpg">
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
                                    <form action="MeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <span class="likeHeart" ><i class="uil uil-heart"  id="likeheart${index.count}"></i></span>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
                            </div>
                            <div class="bookmark">
                                <span><i class="uil uil-bookmark"></i></span>
                            </div>
                        </div>
                        
                        <div class="liked-by">
                            <p>Le gusta a <b>${publicacion.meGusta}</b> personas</p>
                        </div>

                        <div class="caption">
                        <p class="hash-tag" > <b>${publicacion.username}</b><b>  </b>${publicacion.texto} </p>
                        </div>

                        
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
                                        <img src="HOME/images/default.jpg" alt="img">
                                    </div>
                                   <form action="ComentarioController" method="post" class="comentar-comentario">
                                       <input type="hidden" name="idCP" value="${publicacion.idPublicacion}">
                                    <input type="hidden" id="pageC" name="pageC" value="${page}">
                                    <input type="hidden" id="sectionC" name="sectionC" value="${section}">
                                       <input type="text" name="textC" value="" placeholder="">
                                       <button type="button" id="btn-comment" class="btn btn-primary">
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
                                
                            </span>
                        </div>
                        
                        <div class="caption">
                            <br><p class="commentspoiler">${publicacion.texto}</p>
                        </div>

                        

                        <div class="action-buttons">
                            <div class="interaction-buttons">
                                    <form action="MeGustaController" method="POST">
                                <input type="hidden" value="${publicacion.idPublicacion}" name="input-idPubliL">
                                <input type="hidden" id="pageMG" name="pageMG" value="${page}">
                                <input type="hidden" id="sectionMG" name="sectionMG" value="${section}">
                                <span type="submit" class="likeHeart"><i class="uil uil-heart"  id="likeheart${index.count}"></i></span>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                                </form>
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
                                        <img src="HOME/images/default.jpg" alt="img">
                                    </div>
                                   <form action="ComentarioController" method="post" class="comentar-comentario">
                                       <input type="hidden" name="idCP" value="${publicacion.idPublicacion}">
                                    <input type="hidden" id="pageC" name="pageC" value="${page}">
                                    <input type="hidden" id="sectionC" name="sectionC" value="${section}">
                                       <input type="text" name="textC" value="" placeholder="">
                                       <button type="button" id="btn-comment" class="btn btn-primary">
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
                    <form action="PaginacionAntControllerP" method="POST">
                        <input type="hidden" id="AntPage" name="page" value="${page}">
                        <input type="hidden" id="AntSection" name="section" value="${section}">
                        <c:if test="${page-1>0}">
                        <button type="submit" class=" btn btn-primary final-buttons" id="Anterior">Anterior</button>
                        </c:if>
                    </form>
                    <form action="PaginacionDespControllerP" method="POST">
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


<!--=================DELETE COMMENT====================-->
<div class="customize-delete-comment">
    <div class="card">
         <form action="LogIn" method="POST">
        <h2>Necesita iniciar sesión para continuar</h2>
               <input type="hidden" id="idCommentDC" name="idCommentDC">
                 <input type="hidden" id="pageDC" name="pageDC" value="${page}">
                 <input type="hidden" id="sectionDC" name="sectionDC" value="${section}">

        <button class=" btn btn-profile-info" type="submit" id="log-In" >Iniciar Sesión</button>
        <button class=" btn btn-profile-info" type="button" id="DeleteClosecomment" >Cancelar</button>
        </form>
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


    <script src="HOME/PRINCIPAL.js"></script>

    </body>
</html>