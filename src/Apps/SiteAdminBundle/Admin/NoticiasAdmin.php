<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class NoticiasAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        
        $obj = $this->getSubject();

        $fileFieldOptions = array('required' => false);
        if ($obj && ($webPath = '../../../../../../../web/uploads/noticias/' . $obj->getImagen())) {

            $fileFieldOptions['help'] = '<img style="width:50%;" src="' . $webPath . '" class="admin-preview" />';
        }



        $formMapper
                ->add('titulo')
                ->add('file', 'file', $fileFieldOptions  )
                ->add('descripcion')
                ->add('contenido')
                ->add('peso')
               
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('id')
                ->add('imagen')
                ->add('descripcion')
      
                ->add('peso')
                ->add('created')
          
        ;
    }

    public function prePersist($objEntity) {
        $objEntity->setEstado("p");
        $objEntity->setCreated(new \DateTime());
        $objEntity->setUpdated(new \DateTime());
        $objEntity->upload();
    }

    public function preUpdate($objEntity) {
        $objEntity->setUpdated(new \DateTime());
        $objEntity->upload();
    }

}

?>
