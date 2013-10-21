<?php

namespace   Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class ImagenesPersonalAdmin extends Admin
{
    protected function configureFormFields(FormMapper $formMapper)
    {
        $formMapper
            ->add('file', "file" , array("required"=> false ))
            ->add('titulo')                                
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
            ->add('imagen')            
            ->add('descripcion')           
        ;
    }
     
}
?>
