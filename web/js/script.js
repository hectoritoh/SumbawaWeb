


$(document).ready(function() {


    $("#productoDropdown").hover(function() {
        $("#menu-productos").show();
    }, function() {

    });


    $("#menu-productos").hover(function() {
//        $("#menu-productos").show();
    }, function() {
        $("#menu-productos").hide();
    });


    $(".SURF").click(function() {

        window.location = "https://www.facebook.com/sumbawa.ecuador/app_716882854994318?ref=ts";
    });

    $(".video-popup").YouTubePopup({autoplay: 0});

});


function mostrarCategoria(id) {
    $(".list-categorias").hide();
    $("#" + id + "lista-cat").show();

}

function ocultarCategoria(id) {
    $("#" + id + "lista-cat").hide();
}

function mostrarPerfil(elemento) {
    $(".personal-menu-item").removeClass("activo");
    $(elemento).addClass("activo");
    $(".team-block").hide();
    $("#preguntas").show();
}

function mostrarImagenes(elemento) {
    $(".personal-menu-item").removeClass("activo");
    $(elemento).addClass("activo");
    $(".team-block").hide();
    $("#imagenes").show();
}

function mostrarVideos(elemento) {
    $(".personal-menu-item").removeClass("activo");
    $(elemento).addClass("activo");
    $(".team-block").hide();
    $("#videos").show();
}



function mostrarEntrevista(elemento) {
    $(".personal-menu-item").removeClass("activo");
    $(elemento).addClass("activo");
    $(".team-block").hide();
    $("#entrevista").show();
}


function setFocus(  elemento , indice ){
    
    $(".submenu-productos").removeClass("active"); 
    $(elemento).addClass("active");
    $(".forecast-block").hide();
    $("#fore" +  indice ).show();        
}