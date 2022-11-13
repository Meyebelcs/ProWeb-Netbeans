<%-- 
    Document   : LOGIN_REGISTER
    Created on : 17 oct. 2022, 22:37:01
    Author     : denis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login y Registro</title>
        <!-- Link css -->
        <link rel="stylesheet" href="LOGIN_REGISTER/LOGIN_REGISTER.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
            <main>

        <div class="nav">
            <a href="/" class="active"><img width="200" src="LOGIN_REGISTER/assets/Amethyst home.png" alt="Inicio"></a>
            <div class="barra-busqueda">
                <form>
                    <input type="text" placeholder="Buscar..." name="buscar">
                        <button type="submit"><i>
                            <svg 
                            xmlns="http://www.w3.org/2000/svg" 
                            width="1em" 
                            height="1em" 
                            viewBox="0 0 512 512">
                            <path 
                            d="M416 208c0 45.9-14.9 88.3-40 122.7l126.6 126.7c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0s208 93.1 208 208zM208 352c79.5 0 144-64.5 144-144S287.5 64 208 64S64 128.5 64 208s64.5 144 144 144z"/></svg>
                        </i></button>
                </form>
            </div>
            <a href="/" class="a-right">Iniciar Sesión</a>
            <a href="/" class="a-right">Registrarse</a>
            <a href="/" class="a-right perfil"><i><svg 
                xmlns="http://www.w3.org/2000/svg" 
                width="3em" 
                height="3em" 
                viewBox="0 0 512 512">
                <path 
                d="M399 384.2c-22.1-38.4-63.6-64.2-111-64.2h-64c-47.4 0-88.9 25.8-111 64.2c35.2 39.2 86.2 63.8 143 63.8s107.8-24.7 143-63.8zM512 256c0 141.4-114.6 256-256 256S0 397.4 0 256S114.6 0 256 0s256 114.6 256 256zm-256 16c39.8 0 72-32.2 72-72s-32.2-72-72-72s-72 32.2-72 72s32.2 72 72 72z"/></svg></i></a>
        </div>

            <div class="contenedor">
                <div class="contenedor_todo">
                    <div class="caja_trasera">
                        <div class="caja_trasera-login">
                            <h3>¿Ya tienes una cuenta?</h3>
                            <p>Inicia sesión para entrar a la página</p>
                            <button id="btn_inciar-sesión">Iniciar sesión</button>
                        </div>
                        <div class="caja_trasera-register">
                            <h3>¿Aún no tienes una cuenta?</h3>
                            <p>Registrate para que puedas iniciar sesión</p>
                            <button id="btn_registrarse">Registrarse</button>
                        </div>
                    </div>
                    <div class="contenedor_login-register">
                        <!-- Login -->
                        <form action="UserLogin" method="POST" class="formulario_login" id="login">
                            <h2>Inicar sesión</h2>
                            <div class="form-control">
                                <input type="text" placeholder="Nombre de usuario" id="Usernamelogin" name="usuario">
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
                                <input type="password" placeholder="Contraseña" id="passwordLogin" name="contra">
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
                            <button type="submit" id="btn-login" >Entrar</button>
                        </form>
                        <!-- Registro -->
                        <form action="UserRegister" id="register" class="formulario_register" method="POST">
                            <h2>Registrarse</h2>
                            <div class="form-control">
                                <input type="text" id="nombres" placeholder="Nombres" name="nombres">
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
                                <input type="text" id="apellidos" placeholder="Apellidos" name="apellidos">
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
                                <input type="input" id="Correo" placeholder="Correo Electrónico" name="email">
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
                                <input type="text" id="Usuario" placeholder="Usuario" name="usuario">
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
                                <input type="password" id="Contraseña" placeholder="Contraseña" name="contra">
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
                                <input type="password" id="ConfirmarContraseña" placeholder="Confirmar contraseña">
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
                                <input type="date" class="input_fecha" id="fecha" name="fechaN">
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
                                <input accept="image/*" class="input_foto" type="file" id="foto" name="fotoPerfil">
                            </div>
                            <button type="subtmit"id="registerf" >Registrarse</button>
                            <!-- <p class="warnings" id="warnings">gtgt</p> -->
                        </form>
                    </div>  
                </div>
                <img class="amethyst-logo" height="500" src="LOGIN_REGISTER/assets/Amethyst logo.PNG" alt="Logo">
            </div> 
    </main>
    <!-- Vinculamos javascript -->
    <script src="LOGIN_REGISTER/LOGIN_REGISTER.js"></script>
    </body>
</html>
