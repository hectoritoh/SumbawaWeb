<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class SubcategoriaAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('categoria')
                ->add('nombre')
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
                ->add('categoria')
                ->add('nombre')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('categoria')
                ->add('nombre')
                ->add('fechaCreacion')
        ;
    }

    //    
    public function prePersist($obj) {
        $obj->setCreated(new \DateTime());
        $obj->setUpdated(new \DateTime());
    }

    public function preUpdate($obj) {
        $obj->setUpdated(new \DateTime());
    }

}

?>
