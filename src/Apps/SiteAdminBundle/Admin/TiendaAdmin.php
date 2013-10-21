<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class TiendaAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
   
                ->add('nombre')
                ->add('direccion')
                ->add('telefono')
                ->add('atencion')
                ->add('email')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
 
                ->add('nombre')
                ->add('direccion')
                ->add('telefono')
                ->add('atencion')
                ->add('email')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
     
                ->add('nombre')
                ->add('direccion')
                ->add('telefono')
                ->add('atencion')
                ->add('email')
        ;
    }

   

}

?>
