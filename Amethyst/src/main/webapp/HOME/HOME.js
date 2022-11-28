/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//------------------------------DELETE PUBLICATION---------------------------------
const DeletepublicationModal = document.querySelector('.customize-delete-post');
const Deletepublicationclick = document.querySelector('#btn-Eliminar-Post');
const Deletepublicationcerrar = document.querySelector('#DeleteClose');

const Deletepublication = document.querySelector('#Delete-post');

//------------------------------DELETE COMMENT---------------------------------
const DeleteCommentModal = document.querySelector('.customize-delete-comment');
const DeleteCommentclick = document.querySelector('#btn-Eliminar-Comment');
const DeleteCommentcerrar = document.querySelector('#DeleteClosecomment');

const DeleteComment = document.querySelector('#Delete-comment');

//------------------------------EDIT COMMENT---------------------------------
const EditCommentModal = document.querySelector('.customize-comment-edit');
const EditCommentclick = document.querySelector('#btn-Edit-Comment');
const EditCommentcerrar = document.querySelector('#EditClosecomment');

const EditComment = document.querySelector('#Edit-comment');

//------------------------------EDIT PUBLICATION---------------------------------
const EditpublicationModal = document.querySelector('.customize-publication-edit');
const Editpublicationclick = document.querySelector('#btn-Edit-Post');
const Editpublicationcerrar = document.querySelector('#EditClose');

const EditTexto= document.getElementById("textoEditP");
const EditFotoP= document.getElementById("fotoEditP");

//------------------------------PROFILE INFO EDIT---------------------------------
const profileclick = document.querySelector('#profile-edit');
const profileModal = document.querySelector('.see-profile');
const EditprofileModal = document.querySelector('.customize-profile');
const Editprofileclick = document.querySelector('#Edit-Info');

//--------------------LIKE--------------------------------
const liked = document.querySelector('#likeheart');
const LikeChange = document.querySelectorAll('.likedHeart');

//-----------------------SHOW COMMENTS---------------------------
const ShowComments = document.querySelector('#showComments');
const comments = document.querySelector('.contenedor-comentarios');

//------------------------------PUBLICATION---------------------------------
const publicationModal = document.querySelector('.customize-publication');
const publicationclick = document.querySelector('#create-post');
const publicationcerrar = document.querySelector('#Close');

const Texto= document.getElementById("textoP");
const FotoP= document.getElementById("fotoP");

//-----------------------SPOILER FEED------------------------
const acceptspoiler = document.querySelector('.btn-spoiler');
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

//acceptspoiler.addEventListener('click', DesactiveSpoiler);

var feeds = document.getElementsByClassName("contenedor-spoiler");
var feeds2 = document.getElementsByClassName("contenedor-nospoiler");
//var agregar = true;

function noSpoiler(posicion) {

    console.log("Mi posicion: " + posicion);
    
    var i=0;
    
    while(i!=posicion){
        
        i++;
    }
    feeds[i].classList.toggle("hidde");
    feeds2[i].classList.toggle("show");
   
}

//==========================LIKE=================================

//SHOW LIKE
const paintLike = () => {

    if( document.getElementById('likeheart').style.color == 'var(--color-heart-active)'){
        document.getElementById('likeheart').style.color = 'var(--color-heart)'; 
    }else{
        document.getElementById('likeheart').style.color = 'var(--color-heart-active)'
    }
}

//liked.addEventListener('click', paintLike);



//==========================SHOW COMMENTS=================================

//opens comments
const showComments = () => {
    if(comments.style.display == 'flex'){
        comments.style.display = 'none'
    }else{
        comments.style.display = 'flex'
    }
}

//ShowComments.addEventListener('click', showComments);

var rojos = document.getElementsByClassName("contenedor-comentarios");
//var agregar = true;

function MostrarComentarios(posicion) {

    console.log("Mi posicion: " + posicion);
    for (var i = 0; i < rojos.length; i++) {
        if (i == posicion) {
            rojos[i].classList.toggle("contenedor-comentarios-height");
        }
    }
}


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

        if(Nombres.value.length<1){ //Valida solo incluir letras alfabeto español}
            setErrorFor(Nombres,"El campo no puede estar vacío");
        }else if(!regexNombres.test(Nombres.value)){
            setErrorFor(Nombres,"Carácteres no válidos");
        }else{
            setSuccesFor(Nombres);
            ok++;
        }

        if(Apellidos.value.length<1){ //Valida solo incluir letras alfabeto español
            setErrorFor(Apellidos,"El campo no puede estar vacío");
        }else if(!regexNombres.test(Apellidos.value)){
            setErrorFor(Apellidos,"Carácteres no válidos");
        }else{
            setSuccesFor(Apellidos);
            ok++;
         }

         if(Correo.value.length<1){
            setErrorFor(Correo,"El campo no puede estar vacío");
        }else if(!regexE.test(Correo.value)){ //evalua que haya texto, @, texto y luego .com
            setErrorFor(Correo,"El correo electrónico no es válido");
        }else{
            setSuccesFor(Correo);
            ok++;
        }
         
         if(Contraseña.value.length<1){
            setErrorFor(Contraseña,"El campo no puede estar vacío");
         }else if(!Contraseña.value.match(/[0-9]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos un número");
         }else if(!Contraseña.value.match(/[A-Z]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos una mayúscula");
         }else if(!Contraseña.value.match(/[a-z]/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos una minúscula");
         }else if(!Contraseña.value.match(/[¿/?/!/¡/./,/;/:/-/(/)/"/']/)){
            setErrorFor(Contraseña,"La contraseña debe contener al menos un signo de puntuación");
         }else if(Contraseña.value.length<8){
            setErrorFor(Contraseña,"La contraseña debe contener al menos 8 caracteres");
         }else{
            setSuccesFor(Contraseña);
            ok++;
         }

         if(Contraseña2.value.length<1){
            setErrorFor(Contraseña2,"El campo no puede estar vacío");
         }else if(Contraseña2.value!==Contraseña.value){
            setErrorFor(Contraseña2,"Las contraseñas no coinciden");
         }else{
            setSuccesFor(Contraseña2);
            ok++;
         }

         if(Fecha.value.length<1){
            setErrorFor(Fecha,"No seleccionó ninguna fecha");
         }else if(validateDate(Fecha.value)){
            setErrorFor(Fecha,"Fecha no válida");
        }else if(getAge(Fecha.value)<13){
            setErrorFor(Fecha,"Debe ser mayor a 13 años");
        }else{ 
            setSuccesFor(Fecha);
            ok++;
         }
         
          if(ok<7){
             return false;
         }else if (ok===7){
             return true;
         } 
         
    });
    
    $("#form-publication").submit(function publicacion() {
            
            
        var ok=0;

        var regexNombres=/^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+(?: [a-zA-ZáéíóúÁÉÍÓÚñÑ]+)*$/;
        var regexE=/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))*$/;

        if(Texto.value.length<1 && FotoP.files.length===0){ //Valida solo incluir letras alfabeto español}
             alert("vacios");
            setErrorFor(Texto,"El campo no puede estar vacío");
            setErrorFor(FotoP,"El campo no puede estar vacío");
        }else if(!regexNombres.test(Texto.value)){
            alert("letras");
            setErrorFor(Texto,"Carácteres no válidos");
        }else{
            setSuccesFor(Nombres);
            setsuccesFor(FotoP);
            ok++;
        }
        
           if(ok<1){
             return false;
         }else if (ok===1){
             return true;
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

//==========================PUBLICATION=================================

const openPublicationModal = () => {
    publicationModal.style.display = 'grid';
};

const closePublicationModal = (e) => {
    publicationModal.style.display = 'none';
};


publicationclick.addEventListener('click', openPublicationModal);

publicationcerrar.addEventListener('click', closePublicationModal);


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


//==========================EDIT PUBLICATION=================================

document.addEventListener('click', (e) =>
  {
    // Retrieve id from clicked element
    let elementId = e.target.id;
    
    // If element has id
    if (elementId.toString().includes("btn-Edit-Post")) {
        
        var str = elementId.toString();
            var matches = str.match(/(\d+)/);
              
            if (matches) {
               openPublicationEditModal(matches[0]);
            }
    }
    
     if (elementId.toString().includes("btn-Eliminar-Post")) {
        
        var str = elementId.toString();
            var matches = str.match(/(\d+)/);
              
            if (matches) {
               openPublicationDeleteModal(matches[0]);
            }
    }
    
    if (elementId.toString().includes("btn-Eliminar-Comment")) {
        
        var str = elementId.toString();
            var matches = str.match(/(\d+)/);
              
            if (matches) {
               openCommentDeleteModal(matches[0]);
            }
               
    }
    
    if (elementId.toString().includes("DeleteClosecomment")) {
        
        closeCommentDeleteModal();
    }
    
    if (elementId.toString().includes("btn-Edit-Comment")) {
        
        var str = elementId.toString();
            var matches = str.match(/(\d+)/);
              
            if (matches) {
               openCommentEditModal(matches[0]);
            }
        
    }
    
    if (elementId.toString().includes("EditClosecomment")) {
        
        closeCommentEditModal();
    }
    
    if (elementId.toString().includes("likeheart")) {
        
        var str = elementId.toString();
            var matches = str.match(/(\d+)/);
              
            if (matches) {
               giveLike(matches[0]);
            }
        
    }
    
  }
);

function openPublicationEditModal(btnId) {
    var text="input-text";
    const textoPubli= document.getElementById(text.concat(btnId));
    $("#textoEP").val(textoPubli.value);
    var idImage="input-img";
    const image= document.getElementById(idImage.concat(btnId));
    document.getElementById("imgEP").src="UImgController?id=1000003";
    var isSpoiler="input-spoiler";
    const spoiler= document.getElementById(isSpoiler.concat(btnId));
    const chSpoiler=document.getElementById("spoilerEditP");
    if(spoiler.value==="true"){
      chSpoiler.checked=true;
    }else{
       chSpoiler.checked=false;
    }
    var idPubli="input-idPubli";
    const idPublicacion= document.getElementById(idPubli.concat(btnId));
    $("#idPubliEP").val(idPublicacion.value);
    EditpublicationModal.style.display = 'grid';
};

const closePublicationEditModal = (e) => {
    EditpublicationModal.style.display = 'none';
};


Editpublicationclick.addEventListener('click', openPublicationEditModal);

Editpublicationcerrar.addEventListener('click', closePublicationEditModal);


function setErrorFor(input, message){
    const formControl=input.parentElement;//.form-control
    const small=formControl.querySelector('small');

    if(input===Foto){
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

$("#form-Editpublication").submit(function publicacion() {


        var ok=0;


        if(EditTexto.value.length<1 && EditFotoP.files.length===0){ //Valida solo incluir letras alfabeto español}
             alert("vacios edit public");
            setErrorFor(EditTexto,"El campo no puede estar vacío");
            setErrorFor(EditFotoP,"El campo no puede estar vacío");
        }else{
            setSuccesFor(Nombres);
            setsuccesFor(EditFotoP);
            ok++;
        }

           if(ok<1){
             return false;
         }else if (ok===1){
             return true;
         }


    });

//==========================DELETE PUBLICATION=================================

function openPublicationDeleteModal(btnId){
    var idPubli="input-idPubli";
    const idPublicacion= document.getElementById(idPubli.concat(btnId));
    $("#idPubliDP").val(idPublicacion.value);
    DeletepublicationModal.style.display = 'grid';
};

const closePublicationDeleteModal = (e) => {
    DeletepublicationModal.style.display = 'none';
};

const PublicationDelete= (e) => {
    alert('se eliminó');
    DeletepublicationModal.style.display = 'none';
};

Deletepublicationclick.addEventListener('click', openPublicationDeleteModal);

Deletepublicationcerrar.addEventListener('click', closePublicationDeleteModal);

Deletepublication.addEventListener('click', PublicationDelete);

//==========================DELETE COMMENT=================================

function openCommentDeleteModal(btnId) {
    var idPubli="input-idC";
    const idPublicacion= document.getElementById(idPubli.concat(btnId));
    $("#idCommentDC").val(idPublicacion.value);
    DeleteCommentModal.style.display = 'grid';
};

function closeCommentDeleteModal() {
    DeleteCommentModal.style.display = 'none';
};

const CommentDelete= (e) => {
    alert('se eliminó');
    DeleteCommentModal.style.display = 'none';
};

DeleteCommentclick.addEventListener('click', openCommentDeleteModal);

DeleteCommentcerrar.addEventListener('click', closeCommentDeleteModal);

DeleteComment.addEventListener('click', CommentDelete);

//==========================EDIT COMMENT=================================

function openCommentEditModal(btnId){
     var text="input-textC";
    const textoComment= document.getElementById(text.concat(btnId));
    $("#textoEditC").val(textoComment.value);
    var idC="input-idC";
    const idComment= document.getElementById(idC.concat(btnId));
    $("#idCommentEC").val(idComment.value);
    var isSpoiler="input-spoilerC";
    const spoiler= document.getElementById(isSpoiler.concat(btnId));
    const chSpoiler=document.getElementById("spoilerEC");
    if(spoiler.value==="true"){
      chSpoiler.checked=true;
    }else{
       chSpoiler.checked=false;
    }
    var idPubli="input-idPC";
    const idPublicacion= document.getElementById(idPubli.concat(btnId));
    $("#idPubliEC").val(idPublicacion.value);
    EditCommentModal.style.display = 'grid';
};

function closeCommentEditModal(){
    EditCommentModal.style.display = 'none';
};

const CommentEdit= (e) => {
    alert('se editó');
    EditCommentModal.style.display = 'none';
};

//EditCommentclick.addEventListener('click', openCommentEditModal);

//EditCommentcerrar.addEventListener('click', closeCommentEditModal);

EditComment.addEventListener('click', CommentEdit);

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
