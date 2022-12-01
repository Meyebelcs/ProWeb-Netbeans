/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//------------------------------DELETE COMMENT---------------------------------
const DeleteCommentModal = document.querySelector('.customize-delete-comment');

//-----------------------SHOW COMMENTS---------------------------
const ShowComments = document.querySelector('#showComments');
const comments = document.querySelector('.contenedor-comentarios');

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


//==========================SHOW COMMENTS=================================

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


//==========================EDIT PUBLICATION=================================

document.addEventListener('click', (e) =>
  {
    // Retrieve id from clicked element
    let elementId = e.target.id;
    
    
    // If element has id
     if (elementId.toString().includes("btn-comment")) {
        openCommentDeleteModal();
    }
    
    if (elementId.toString().includes("create-post")) {
        openCommentDeleteModal();
    }
   
    if (elementId.toString().includes("likeheart")) {
        openCommentDeleteModal();
    }
    if (elementId.toString().includes("profile-edit")) {
        openCommentDeleteModal();
    }
    
    if (elementId.toString().includes("DeleteClosecomment")) {
        closeCommentDeleteModal();
    }
    
  }
);

//==========================DELETE COMMENT=================================

function openCommentDeleteModal() {
    DeleteCommentModal.style.display = 'grid';
};

function closeCommentDeleteModal() {
    DeleteCommentModal.style.display = 'none';
};



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

