<?php

namespace Apps\SiteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class SiteController extends Controller {

    public function menuAction() {
        $categorias = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();
        $tiendas = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Tienda")->findAll();
        return $this->render('AppsSiteBundle:Menu:sub.html.twig', array(
                    "categorias" => $categorias,
                    "tiendas" => $tiendas
        ));
    }

    public function productosAction() {
        // $categorias = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();
        return $this->render('AppsSiteBundle:Block:productos_1.html.twig', array(
                    // "categorias" => $categorias
        ));
    }
    
    public function noticiasAction() {

        $noticias = $this->getDoctrine()->getEntityManager()
                ->createQuery('SELECT f FROM AppsSiteAdminBundle:Noticias f')
                ->setMaxResults(3)
                ->getResult();

        return $this->render('AppsSiteBundle:Block:noticias.html.twig', array(
                    "noticias" => $noticias
        ));
    }

    public function sliderAction() {

        $banners = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Banner")->findAll();

        return $this->render('AppsSiteBundle::slider.html.twig', array(
                    "banners" => $banners
        ));
    }

    public function categoriasAction() {
        $categorias = $this->getDoctrine()->getRepository("AppsSiteAdminBundle:Categoria")->findAll();
        return $this->render('AppsSiteBundle::categorias.html.twig', array(
                    "categorias" => $categorias
        ));
    }

    

}
