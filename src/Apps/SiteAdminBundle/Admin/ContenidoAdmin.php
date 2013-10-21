<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class ContenidoAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('titulo')
                ->add('contenido' , 'genemu_tinymce' )
                ->add('categoria', "choice", array(
                    "choices" => array(
                        "nosotros" => "Nosotros",
                        "preguntas" => "Preguntas"
                    ))
        );
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('titulo')
                ->add('contenido')
                ->add('categoria', "choice", array(
                    "choices" => array(
                        "nosotros" => "Nosotros",
                        "preguntas" => "Preguntas"
                    ))
        );
    }

}

?>
