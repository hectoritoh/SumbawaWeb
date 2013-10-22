<?php

namespace Apps\SiteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{

    public function indexAction()
    {
        return $this->render('AppsSiteBundle:Pages:index.html.twig');
    }
    

    public function productosAction()
    {
        return $this->render('AppsSiteBundle:Pages:productos.html.twig');
    }
    



    public function noticiasAction()
    {
     $categorias  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();      
     $noticias    = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Noticias")->findAll();      

     return $this->render('AppsSiteBundle:Pages:noticias.html.twig'  , array(
        "categorias" => $categorias , 
        "noticias" => $noticias
        ));
    }


    public function descripcionNoticiasAction(  $id_noticia )
{
    $selected  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Noticias")->findOneBy(array(
        "id" => $id_noticia
        ));
    $noticias  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Noticias")->findAll();


    return $this->render('AppsSiteBundle:Pages:show_noticia.html.twig', array(
        "selected" => $selected , 
        "noticias" => $noticias , 
        ));
}



 public function forecastAction()
 {
    return $this->render('AppsSiteBundle:Pages:forecast.html.twig');
}





public function imagenesAction()
{
    $imagenes  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Imagenes")->findAll();      
    return $this->render('AppsSiteBundle:Pages:imagenes.html.twig'   , array(
        "imagenes" => $imagenes 
        ));
}


public function videosAction()
{
    $imagenes  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Videos")->findAll();      
    
    
    
    return $this->render('AppsSiteBundle:Pages:videos.html.twig'   , array(
        "media" => $imagenes 
        ));
}


public function teamAction()
{
    $personal = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Personal")->findAll(); 

    return $this->render('AppsSiteBundle:Pages:team.html.twig', 
        array('personal' =>  $personal )
        );
}


public function aboutAction()
{
    return $this->render('AppsSiteBundle:Pages:about.html.twig');
}






public function imagenesVerAction(  $id_imagen )
{

    $imagenes  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Imagenes")->findAll();      
    $selected  = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Imagenes")->findOneBy( array("id" =>   $id_imagen ) );      
    return $this->render('AppsSiteBundle:Default:detalle_imagenes.html.twig'   , array(
        "imagenes" => $imagenes , 
        "selected" => $selected 
        ));
}









public function listarProductosAction($id_subcategoria) {
    $categorias = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();

    $selected = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Subcategoria")->findOneBy(
        array("id" => $id_subcategoria)
        );

    $productos = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Producto")->findBy(array(
        "subcategoria" => $selected
        ));

    return $this->render('AppsSiteBundle:Default:productos.html.twig', array(
        "categorias" => $categorias,
        "productos" => $productos,
        "selected" => $selected
        ));
}



public function tiendasAction($id_tienda) {

    $tiendas = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Tienda")->findAll();
    $selected = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Tienda")->findOneBy(array(
        "id" => $id_tienda
        ));

    return $this->render('AppsSiteBundle:Default:tiendas.html.twig', array(
        "tiendas" => $tiendas,
        "selected" => $selected
        ));
}








public function descripcionProductosAction( $id_producto  )
{
   $categorias = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();

   $producto = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:producto")->find($id_producto); 

   return $this->render('AppsSiteBundle:Default:datos_producto.html.twig', array(
    "producto" => $producto , 
//            "categorias" => $categorias 
    ));
}


public function descripcionFotoAction(    )
{
    return $this->render('AppsSiteBundle:Default:datos_foto.html.twig');
}







public function mediaFotosAction()
{
    return $this->render('AppsSiteBundle:Default:media_fotos.html.twig');
}




public function mediaVideoAction()
{
    return $this->render('AppsSiteBundle:Default:media_video.html.twig');
}







public function descripcionteamAction($id_persona)
{

    $personal = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Personal")->findAll(); 
    $selected = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Personal")->findOneBy(array(
        "id" => $id_persona , 

        )); 

    return $this->render('AppsSiteBundle:Default:team_descripcion.html.twig' , array(
        "personal" => $personal , 
        "selected" => $selected  
        ));
}






public function entrevistateamAction( $id_persona )
{

    $personal = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Personal")->findAll(); 
    $selected = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Personal")->findOneBy(array(
        "id" => $id_persona , 
        )); 


    return $this->render('AppsSiteBundle:Default:team_entrevista.html.twig' , array(
        "personal" => $personal , 
        "selected" => $selected  
        ));
}





public function fotosteamAction()
{
    return $this->render('AppsSiteBundle:Default:team_fotos.html.twig');
}
public function videosteamAction()
{
    return $this->render('AppsSiteBundle:Default:team_videos.html.twig');
}
public function forecasteamAction()
{
    return $this->render('AppsSiteBundle:Default:forecast.html.twig');
}
public function quienessomosAction()
{
    return $this->render('AppsSiteBundle:Default:quienes_somos.html.twig');
}





public function carritoProductosAction()
{
    return $this->render('AppsSiteBundle:Default:carrito_productos.html.twig');
}
public function detalleDelEnvioAction()
{
    return $this->render('AppsSiteBundle:Default:detalle_envio.html.twig');
}
public function detalleDelPagoAction()
{
    return $this->render('AppsSiteBundle:Default:detalle_pago.html.twig');
}
public function detalleListoAction()
{
    return $this->render('AppsSiteBundle:Default:detalle_listo.html.twig');
}

}
