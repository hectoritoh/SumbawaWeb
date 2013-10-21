<?php

namespace   Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class ImagenesAdmin extends Admin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('titulo')            
            ->add('file', "file")            
            ->add('descripcion')            
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
         
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            
            ->addIdentifier('id')
            ->add('titulo')            
            ->add('descripcion')           
        ;
    }



   public function prePersist($obj) {
        $obj->setEstado("p");
        $obj->upload();
    }

    public function preUpdate($obj) {
        
        $obj->upload();
    }

     
}
?>
