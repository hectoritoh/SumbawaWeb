<?php

namespace   Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class CategoriaAdmin extends Admin
{
    
    const SERVER_PATH_TO_IMAGE_FOLDER = '/uploads/categorias';

    protected function configureFormFields(FormMapper $formMapper)
    {
       $categoria = $this->getSubject();
        
       $fileFieldOptions = array('required' => false);
        if ($categoria && ($webPath = '../../../../../../../web/uploads/categorias/' .  $categoria->getImagen())) {
            // add a 'help' option containing the preview's img tag
            $fileFieldOptions['help'] = '<img style="width:200px;height:100px;" src="'.$webPath.'" class="admin-preview" />';
        }
        
        
        $formMapper
            ->add('name')            
            ->add('file', 'file' , $fileFieldOptions );
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('name')
            ->add('created')
            ->add('estado')
            ->add('imagen')
        ;
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            
        ->addIdentifier('id')
            ->add('name')
            ->add('created')
            ->add('estado')
            ->add('imagen')
        ;
    }
    
    
    
    
//    
    public function prePersist($obj) { 
        
        $obj->upload();
    }

    public function preUpdate($obj) {
        $obj->upload();
    }
//    
    
 
     
}
?>
