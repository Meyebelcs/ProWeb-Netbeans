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
        <meta charset="UTF-8">
    
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
            <h2 class="log">
                Amethyst
            </h2>
            <div class="search-bar">
                <i class="uil uil-search"></i>
                <input type="search" placeholder="Escribe aquí aquello que buscas">
            </div>
            <div class="create">
                <label class=" btn btn-primary" for="create-post">Create</label>


                <div class="click-profile">
                    <div class="profile-photo" id="profile-edit">
                        <img src="UImgController?id=${id}">
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
                <a class="menu-item active">
                    <span><i class="uil uil-cloud-heart"></i></span> <h3>Más recientes</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-envelope-heart"></i></span> <h3>Más comentadas</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-file-heart"></i></span> <h3>Más votadas</h3>
                </a>

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
                <form action="Publicacion" class="create-post" method="POST">
                    <div class="profile-photo">
                        <img src="UImgController?id=${id}">
                    </div>
                    <input type="text" placeholder="¿Qué estás pensando?" id="create-post" name="publi">
                    <button type="submit" class="btn btn-primary" id="btn-create-post" name="btn-create-post">Post</button>
                </form>

                <!-----------------------FEEDS-------------------------->
                <div class="feeds">
                     <!-----------------------FEED 1-------------------------->
                       <div class="feed">
                        <div class="head">
                            <div class="user">
                                <div class="profile-photo">
                                    <img src="../images/profile-13.jpg">
                                </div>
                                <div class="ingo">
                                    <h3>  Denisse Cardoza</h3>
                                    <small>  FCFM, HACE 15 MINUTOS</small>
                                </div>
                            </div>
                            <span class="edit">
                                <i class="uil uil-ellipsis-h"></i>
                            </span>
                        </div>

                        <div class="photo" id="photo-spoiler">
                            <img src="../images/feed-1.jpg">
                            <div id="image-data" class="image-data">
                               
                                <h2 class="image-data_title">Spoiler</h2>
                                <p class="image-data_text">¿Estás seguro de querer ver este contenido?</p>
                                <label class=" btn btn-primary" id="spoiler-feed">Aceptar</label>
                                
                            </div>
                        </div>

                        <div class="action-buttons">
                            <div class="interaction-buttons">
                                <span><i class="uil uil-heart"></i></span>
                                <span><i class="uil uil-comment-dots"></i></span>
                                <span><i class="uil uil-share"></i></span>
                            </div>
                            <div class="bookmark">
                                <span><i class="uil uil-bookmark"></i></span>
                            </div>
                        </div>
                        
                        <div class="liked-by">
                            <span><img src="../images/profile-15.jpg"></span>
                            <span><img src="../images/profile-12.jpg"></span>
                            <span><img src="../images/profile-11.jpg"></span>
                            <p>Le gusta a <b>Boing Eguia</b> y <b>57 personas más</b> </p>
                        </div>

                        <div class="caption">
                        <p> <b>Denisse Cardoza</b> Un poco del festival de Halloween <span
                            class="harsh-tag">#Halloween</span></p>
                        </div>
                        <div class="comments text-muted">Ver los 15 comentarios</div>

                        <!-----------------------COMENTARIOS----------------------->
                        <section class="contenedor-comentarios">
                           
                            <div class="comentarios-usuarios">
                                <!-- comentario principal -->
                                <div class="comentario-principal-usuario">
                                    <div class="avatar">
                                        <img src="../images/profile-5.jpg" alt="img">
                                    </div>
                                    <div class="comentario">
                                        <div class="usuario-comentario">
                                            <div class="texto">
                                                <a href="#" title="" class="nombre-usuario"> Kevin Mora</a> 
                                                <p>De verdad es la FCFM? no parece :0</p> 
                                                <div class="menu-comentario">
                                                    <i class="uil uil-pen"></i>
                                                    <ul class="menu">
                                                        <li><a href="">Editar</a></li>
                                                        <li><a href="">Eliminar</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="botones-comentario">
                                                <button type="" class="boton-puntuar">
                                                    <i class="uil uil-thumbs-up"></i>
                                                    5
                                                </button>
                                                <button type="" class="boton-responder">
                                                    responder
                                                </button>
                                                <span class="tiempo-comentario">
                                                    hece 3 min
                                                </span>
                                            </div>
                                        </div>
                        
                                        <!-- contenedor sub comentarios -->
                                        <div class="contenedor-sub-comentarios">
                                            <!-- sub-comentario uno -->
                                            <div class="comentario-principal-usuario">
                                                <div class="avatar">
                                                    <img src="../images/profile-3.jpg" alt="img">
                                                </div>
                                                <div class="comentario">
                                                    <div class="usuario-comentario">
                                                        <div class="texto">
                                                            <a href="#" title="" class="nombre-usuario">Iram Cervantes</a>
                                                            <p>Si bro, fue en la cancha de basquet</p>
                                                            
                                                            <div class="menu-comentario">
                                                                <i class="uil uil-pen"></i>
                                                                <ul class="menu">
                                                                    <li><a href="">Editar</a></li>
                                                                    <li><a href="">Eliminar</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="botones-comentario">
                                                            <button type="" class="boton-puntuar">
                                                                <i class="uil uil-thumbs-up"></i>
                                                                12
                                                            </button>
                                                            <button type="" class="boton-responder">
                                                                responder
                                                            </button>
                                                            <span class="tiempo-comentario">
                                                                hece 3 min
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                        
                                    </div>
                        
                                </div>
                        
                                <div class="comentar-publicacion">
                                    <div class="avatar">
                                        <img src="../images/profile-13.jpg" alt="img">
                                    </div>
                                   <form action="#" method="post" class="comentar-comentario">
                                       <input type="text" name="" value="" placeholder="">
                                       <button type="" class="btn btn-primary">
                                        <center>
                                        <i class="uil uil-message"></i>
                                        </center>
                                       </button>
                                   </form>
                                </div>
                                
                            </div>
                        </section>

                    </div>
                    <!------------------------------END OF FEED--------------------------->                 
                </div>
                <!------------------------------END OF FEEDS------------------->
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
                    <input type="text" name="nombresE" value="<%=request.getSession().getAttribute("nombres")%>" onkeypress="return validaLetras(event);" >
                    <i class="icon check-circle">
                        <svg 
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
                </div>
                <div class="form-control">
                    <input type="text" name="apellidosE" value="<%=request.getSession().getAttribute("apellidos")%>" onkeypress="return validaLetras(event);">
                    <i class="icon check-circle">
                        <svg 
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
                    <small class="small_register  error">Error message</small>
                </div>
                <div class="form-control">
                    <input type="email" name="CorreoE" value="<%=request.getSession().getAttribute("email")%>">
                    <i class="icon check-circle">
                        <svg 
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
                </div>
               
                <div class="form-control">
                    <input type="password" name="ContraseñaE" value="<%=request.getSession().getAttribute("contraseña")%>">
                    <i class="icon check-circle">
                        <svg 
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
                </div>

                <div class="form-control">
                    <input type="password" name="ConfirmarContraseñaE" value="<%=request.getSession().getAttribute("contraseña")%>">
                    <i class="icon check-circle">
                        <svg 
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
                </div>
                <div class="form-control">
                    <p>Fecha de nacimiento</p>
                    <i class="icon_fecha check-circle">
                        <svg 
                        xmlns="http://www.w3.org/2000/svg" 
                        width="1em" 
                        height="1em" 
                        viewBox="0 0 512 512">
                        <path 
                        d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm113-303L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/></svg>
                    </i>
                    <i class="icon_fecha exclamation-circle">
                        <svg 
                        xmlns="http://www.w3.org/2000/svg" 
                        width="1em" 
                        height="1em" 
                        viewBox="0 0 512 512">
                        <path
                        d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm0-384c13.3 0 24 10.7 24 24v112c0 13.3-10.7 24-24 24s-24-10.7-24-24V152c0-13.3 10.7-24 24-24zm32 224c0 17.7-14.3 32-32 32s-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32z"/></svg>
                    </i>
                    <input type="date"  class="input_fecha" name="fechaE" value="<%=request.getSession().getAttribute("fechaNacimiento")%>">
                    <small class="small_fecha">Error message</small>
                </div>
                <div class="form-control">
                    <p>Foto de perfil</p>
                    <i class="icon_foto check-circle">
                        <svg 
                        xmlns="http://www.w3.org/2000/svg" 
                        width="1em" 
                        height="1em" 
                        viewBox="0 0 512 512">
                        <path 
                        d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm113-303L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"/></svg>
                    </i>
                    <i class="icon_foto exclamation-circle">
                        <svg 
                        xmlns="http://www.w3.org/2000/svg" 
                        width="1em" 
                        height="1em" 
                        viewBox="0 0 512 512">
                        <path
                        d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256s114.6 256 256 256zm0-384c13.3 0 24 10.7 24 24v112c0 13.3-10.7 24-24 24s-24-10.7-24-24V152c0-13.3 10.7-24 24-24zm32 224c0 17.7-14.3 32-32 32s-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32z"/></svg>
                    </i>
                    <small class="small_foto">Error message</small>
                    <input accept="image/*" class="input_foto" type="file" name="fotoE" value="UImgController?id=${id}">
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

<!---------------------------FOOTER--------------------------->
<div class="footer-content">

</div>
<footer>
    <div class="footer-content">
       
        <h2>Facultad de Ciencias Físico Matemáticas</h2>
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
