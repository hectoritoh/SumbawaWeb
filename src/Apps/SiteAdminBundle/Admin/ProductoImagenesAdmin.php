<?php

namespace   Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper; 

class ProductoImagenesAdmin extends Admin
{

 

    protected function configureFormFields(FormMapper $formMapper) {

        if ($this->hasParentFieldDescription()) { // this Admin is embedded
            // $getter will be something like 'getlogoImage'
            $getter = 'get' . $this->getParentFieldDescription()->getFieldName();

            // get hold of the parent object
            $parent = $this->getParentFieldDescription()->getAdmin()->getSubject();
            if ($parent) {
                $image = $parent->$getter();
            } else {
                $image = null;
            }
        } else {
            $image = $this->getSubject();
        }

        // use $fileFieldOptions so we can add other options to the field
        $fileFieldOptions = array('required' => false);
//        if (($webPath = '../../../../../../../web/uploads/prod_images/' . $image->getUrl())) {
//            // add a 'help' option containing the preview's img tag
//            $fileFieldOptions['help'] = '<img src="' . $webPath . '" class="admin-preview" />';
//        }

        $formMapper
                ->add('file', 'file', $fileFieldOptions)  ;
    }

    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        
         
    }

    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            
            ->addIdentifier('id')         
            ->add('imagen', null, array('label' => 'Image', 'required' => false, 'read_only' => true))
                  
        ;
    }
     


    public function prePersist($obj) {       
        $obj->upload();
    }

    public function preUpdate($obj) {
        
        $obj->upload();
    }

      
 


}
?>
