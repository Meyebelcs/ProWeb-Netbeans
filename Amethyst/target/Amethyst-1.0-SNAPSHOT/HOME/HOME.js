/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//------------------------------PROFILE INFO EDIT---------------------------------
const profileclick = document.querySelector('#profile-edit');
const profileModal = document.querySelector('.see-profile');
const EditprofileModal = document.querySelector('.customize-profile');
const Editprofileclick = document.querySelector('#Edit-Info');

const Nombres= document.getElementById("nombres");
const Apellidos= document.getElementById("apellidos");
const Correo= document.getElementById("Correo");
const Contraseña= document.getElementById("Contraseña");
const Contraseña2= document.getElementById("ConfirmarContraseña");
const Fecha= document.getElementById("fecha");
const Foto= document.getElementById("foto");

//-----------------------SPOILER FEED------------------------
const acceptspoiler = document.querySelector('#spoiler-feed');
const imageDataTitle = document.querySelector('.image-data_title');
const imageDataText = document.querySelector('.image-data_text');
const buttonSpoiler = document.querySelector('.image-data .btn-primary');
const backspoiler = document.querySelector('.middle .feed .photo');

//-------------------------SIDEBAR--------------------------
const menuItems = document.querySelectorAll('.menu-item');

//-------------------------NIGHT MODE--------------------------
const theme = document.querySelector('#theme');
const themeModal = document.querySelector('.customize-theme');

//BACKGROUND

const Bg1= document.querySelector('.bg-1');
const Bg2= document.querySelector('.bg-2');
const Bg3= document.querySelector('.bg-3');

//============================SPOILER FEED===================================
//Desactive spoiler
const DesactiveSpoiler = () => {
    imageDataTitle.style.transform ='translateX(-150%)';
    imageDataText.style.transform ='translateX(200%)';
    buttonSpoiler.style.transform ='translateY(800%)';
    backspoiler.style.setProperty('--photo-after', 'translateY(100%)');

}

acceptspoiler.addEventListener('click', DesactiveSpoiler);

//==========================PROFILE INFO EDIT=================================

//opens modal
const openProfileModal = () => {
    profileModal.style.display = 'grid';
};

const openEditProfileModal = () => {
    profileModal.style.display = 'none';
    EditprofileModal.style.display = 'grid';
};

const closeEditProfileModal = (e) => {
    if(e.target.classList.contains('customize-profile')){
        EditprofileModal.style.display = 'none';
    }
};

 $("#form-Editprofile").submit(function save() {
            
            alert("holi");
            
        var ok=0;

        var regexNombres=/^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+(?: [a-zA-ZáéíóúÁÉÍÓÚñÑ]+)*$/;
        var regexE=/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))*$/;

        if(Nombres.value.length<1){ //Valida solo incluir letras alfabeto español
            alert("nombreserror");
            setErrorFor(Nombres,"El campo no puede estar vacío");
        }else if(!regexNombres.test(Nombres.value)){
            alert("nombreserror");
            setErrorFor(Nombres,"Carácteres no válidos");
        }else{
            alert("nombressucces");
            setSuccesFor(Nombres);
            ok++;
        }

        if(Apellidos.value.length<1){ //Valida solo incluir letras alfabeto español
            alert("apellidoserror");
            setErrorFor(Apellidos,"El campo no puede estar vacío");
        }else if(!regexNombres.test(Apellidos.value)){
            alert("apellidoserror");
            setErrorFor(Apellidos,"Carácteres no válidos");
        }else{
            alert("apellidossucces");
            setSuccesFor(Apellidos);
            ok++;
         }

         if(Correo.value.length<1){
             alert("correoerror");
            setErrorFor(Correo,"El campo no puede estar vacío");
        }else if(!regexE.test(Correo.value)){ //evalua que haya texto, @, texto y luego .com
            alert("correoerror");
            setErrorFor(Correo,"El correo electrónico no es válido");
        }else{
            alert("correosucces");
            setSuccesFor(Correo);
            ok++;
        }
         
         if(Contraseña.value.length<1){
            setErrorFor(Contraseña,"El campo no puede estar vacío");
            alert("contraseña error");
         }else if(!Contraseña.value.match(/[0-9]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos un número");
            alert("contraseña error");
         }else if(!Contraseña.value.match(/[A-Z]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos una mayúscula");
            alert("contraseña error");
         }else if(!Contraseña.value.match(/[a-z]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos una minúscula");
            alert("contraseña error");
         }else if(!Contraseña.value.match(/[¿/?/!/¡/./,/;/:/-/(/)/"/']/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos un signo de puntuación");
            alert("contraseña error");
         }else if(Contraseña.value.length<8){
            setErrorFor(Contraseña,"La contraseña debe contener al menos 8 caracteres");
            alert("contraseña error");
         }else{
            setSuccesFor(Contraseña);
            alert("contraseña succes");
            ok++;
         }

         if(Contraseña2.value.length<1){
            alert("contraseña2 error");
            setErrorFor(Contraseña2,"El campo no puede estar vacío");
         }else if(Contraseña2.value!==Contraseña.value){
             alert("contraseña2 error");
            setErrorFor(Contraseña2,"Las contraseñas no coinciden");
         }else{
             alert("contraseña succes");
            setSuccesFor(Contraseña2);
            ok++;
         }

         if(Fecha.value.length<1){
            setErrorFor(Fecha,"No seleccionó ninguna fecha");
            alert("fechaerror");
         }else if(validateDate(Fecha.value)){
             alert("fechaerror");
            setErrorFor(Fecha,"Fecha no válida");
        }else if(getAge(Fecha.value)<13){
            alert("fechaerror");
            setErrorFor(Fecha,"Debe ser mayor a 13 años");
        }else{ 
            alert("fechasucess");
            setSuccesFor(Fecha);
            ok++;
         }
         
         
         
    });

//close modal
const closeProfileModal = (e) => {
    if(e.target.classList.contains('see-profile')){
        profileModal.style.display = 'none';
    }
};
profileModal.addEventListener('click', closeProfileModal);

profileclick.addEventListener('click', openProfileModal);

EditprofileModal.addEventListener('click', closeEditProfileModal);

Editprofileclick.addEventListener('click', openEditProfileModal);

function getAge(date){
    
    var today=new Date();
    var birthday= new Date(date);
    var year= today.getFullYear()-birthday.getFullYear();
    var month=today.getMonth()-birthday.getMonth();
    if(month<0||(month==0 && today.getDate()-1<birthday.getDate())){
        year--;
    }
    return year;
}

function validateDate(date){
    
    var today=new Date();
    var birthday= new Date(date);
    if(birthday>today){
        return true;
    }else{
        return false;
    }
}

function setErrorFor(input, message){
    const formControl=input.parentElement;//.form-control
    const small=formControl.querySelector('small');

    if(input=Foto){
        //add error message inside mall
        small.innerText=message;

        //add error class
        formControl.className='form-control error';
    }else{
        //add error message inside mall
        small.innerText=message;

        //add error class
        formControl.className='form-control error';
    }
}

function setSuccesFor(input){
    const formControl=input.parentElement;
    formControl.className='form-control success';
}


//=======================SIDEBAR============================
//remove active class from all menu items
const changeActiveItem = () => {
    menuItems.forEach(item =>{
        item.classList.remove('active');
    })
}

menuItems.forEach(item =>{
    item.addEventListener('click', () =>{
        changeActiveItem();
        item.classList.add('active');
        if(item.id != 'notifications'){
            document.querySelector('.notifications-popup').
            style.display = 'none';
        }else{
            document.querySelector('.notifications-popup').
            style.display = 'block';
            document.querySelector('#notifications . notification-count').style.display= 'none';
        }
    })
})

//=======================NIGHT MODE============================

//opens modal
const openThemeModal = () => {
    themeModal.style.display = 'grid';
}

//close modal
const closeThemeModal = (e) => {
    if(e.target.classList.contains('customize-theme')){
        themeModal.style.display = 'none';
    }
}


themeModal.addEventListener('click', closeThemeModal);

theme.addEventListener('click', openThemeModal);

//=======================BACKGROUND============================
let lightColorLightness;
let whiteColorLightness;
let darkColorLightness;

//changes background color
const changeBG = () =>{
    root.style.setProperty('--light-color-lightness', lightColorLightness);
    root.style.setProperty('--white-color-lightness', whiteColorLightness);
    root.style.setProperty('--dark-color-lightness', darkColorLightness);
}

Bg1.addEventListener('click', () =>{
    //add active class
    Bg1.classList.add('active');
    //remove active class from the others
    Bg2.classList.remove('active');
    Bg3.classList.remove('active');
    //remove customized changes from local storage
    window.location.reload();
});

Bg2.addEventListener('click', () =>{
    darkColorLightness ='95%';
    whiteColorLightness = '20%';
    lightColorLightness = '15%';

    //add active class
    Bg2.classList.add('active');
    //remove active class from the others
    Bg1.classList.remove('active');
    Bg3.classList.remove('active');
    changeBG();
});

Bg3.addEventListener('click', () =>{
    darkColorLightness ='95%';
    whiteColorLightness = '10%';
    lightColorLightness = '0%';

    //add active class
    Bg3.classList.add('active');
    //remove active class from the others
    Bg1.classList.remove('active');
    Bg2.classList.remove('active');
    changeBG();
});

//=======================PUBLICATIONS============================

/*$(document).ready(function () {

    $("#btn-create-post").click(function () {
            if($( "#create-post" ).val().trim()===""){
                alert("campos vacíos");
                return;
            }
            markup = "<div class=\"feed\">"+
            "<div class=\"head\">"+
                "<div class=\"user\">"+
                    "<div class=\"profile-photo\">"+
                        "<img src=\"../images/profile-13.jpg\">"+
                    "</div>"+
                    "<div class=\"ingo\">"+
                        "<h3>  Denisse Cardoza</h3>"+
                        "<small>  FCFM, HACE 15 MINUTOS</small>"+
                    "</div>"+
                "</div>"+
                "<span class=\"edit\">"+
                    "<i class=\"uil uil-ellipsis-h\"></i>"+
                "</span>"+
            "</div>"+

            "<div class=\"caption\">"+
            "<p> "+$( "#create-post" ).val()+"</p>"+

            "</div>"+

            "<div class=\"action-buttons\">"+
                "<div class=\"interaction-buttons\">"+
                    "<span><i class=\"uil uil-heart\"></i></span>"+
                    "<span><i class=\"uil uil-comment-dots\"></i></span>"+
                    "<span><i class=\"uil uil-share\"></i></span>"+
                "</div>"+
                "<div class=\"bookmark\">"+
                    "<span><i class=\"uil uil-bookmark\"></i></span>"+
                "</div>"+
            "</div>"+
            
            "<div class=\"liked-by\">"+
                "<span><img src=\"../images/profile-15.jpg\"></span>"+
                "<span><img src=\"../images/profile-12.jpg\"></span>"+
                "<span><img src=\"../images/profile-11.jpg\"></span>"+
                "<p>Le gusta a <b>Boing Eguia</b> y <b>57 personas más</b> </p>"+
            "</div>"+

            
            "<div class=\"comments text-muted\">Ver los 15 comentarios</div>"+
        "</div>";

            $( "#create-post" ).val("");
            tableBody = $("body .feeds");
            tableBody.prepend(markup);
});
});*/ 
