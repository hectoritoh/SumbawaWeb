<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;

class BannerAdmin extends Admin {
    
    
    
    private $tipo_banners = array(
        'p' => 'principal',
        's' => 'secundario'
    );
    
    
    private $estados = array(
        'p' => 'publicado',
        'n' => 'no publicado'
    );
    
    
    

    protected function configureFormFields(FormMapper $formMapper) {
        
        $obj = $this->getSubject();
        
            $fileFieldOptions = array('required' => false);
        if ($obj && ($webPath = '../../../../../../../web/uploads/banners/' .  $obj->getImagen())) {
  
            $fileFieldOptions['help'] = '<img style="width:50%;" src="'.$webPath.'" class="admin-preview" />';
        }
        
        
        
        $formMapper
                ->add('file', 'file' , $fileFieldOptions)
           
                ->add('descripcion')
                ->add('estado', 'choice', array(
                    'choices' => $this->estados
                ))
        ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper) {
        $datagridMapper
              
                ->add('estado')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        
        
      
        
        $listMapper
                ->addIdentifier('id')
                ->add('imagen', 'string'  , array('template' => 'SetnetSumbawaBundle:Sonata:image.html.twig') )
   
                ->add('descripcion')
         ;
    }
    
     



    public function prePersist($banner) {
        $banner->setEstado("p");
        $banner->setCreated(  new \DateTime() );
        $banner->setUpdated(  new \DateTime() );
        $banner->upload();
    }

    public function preUpdate($banner) {
        $banner->setUpdated(  new \DateTime() );
        $banner->upload($banner);
    }

}

?>
