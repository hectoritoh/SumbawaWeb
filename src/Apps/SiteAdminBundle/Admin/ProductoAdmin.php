<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class ProductoAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('nombre')
                ->add('descripcion')
                ->add('subcategoria')
                ->add('stock')
                ->add('precio')
                ->add('color1')
                ->add('color2')
                         ->add('imagenes', 'sonata_type_collection', array(
                            'by_reference' => false
            ), array(
                            'edit' => 'inline',
                            'inline' => 'table',
                            'sortable' => 'id',
            ))
            ;
      
 
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
                ->add('nombre')
                ->add('descripcion')
                ->add('subcategoria')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('nombre')
                ->add('descripcion')
                ->add('subcategoria')
        ;
    }
    
    
      public function prePersist($obj) {
         
        foreach ($obj->getImagenes() as $imagen) {
            $imagen->setProducto($obj);
            $imagen->upload();
        }
    }

    public function preUpdate($obj) {
        
         foreach ($obj->getImagenes() as $imagen) {
            $imagen->setProducto($obj);
            $imagen->upload();
        }
    }


}

?>
