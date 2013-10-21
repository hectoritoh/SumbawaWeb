<?php

namespace Apps\SiteAdminBundle\Admin;

use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Validator\ErrorElement;

class PersonalAdmin extends Admin {

    protected function configureFormFields(FormMapper $formMapper) {
        $formMapper
                ->add('nombre')
                ->add('apodo')
                ->add('file', 'file', array('required' => false))
                ->add('estatura')
                ->add('sponsor')
                ->add('anecdota')
                ->add('edad')
                ->add('extra1', null, array("label" => "lo que mas te gusta de surfear"))
                ->add('entrevistas', 'sonata_type_collection', array(
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
                ->add('estatura')
                ->add('sponsor')
                ->add('anecdota')
                ->add('edad')
        ;
    }

    protected function configureListFields(ListMapper $listMapper) {
        $listMapper
                ->addIdentifier('nombre')
                ->add('imagen', null, array('label' => 'Image', 'required' => false, 'read_only' => true))
                ->add('estatura')
                ->add('sponsor')
                ->add('anecdota')
                ->add('edad')
        ;
    }

    public function prePersist($obj) {

        $obj->upload();        
        foreach ($obj->getEntrevistas() as $entrevista) {
            $entrevista->setPersonal($obj);            
        }        
    }

    public function preUpdate($obj) {

        $obj->upload();        
        foreach ($obj->getEntrevistas() as $entrevista) {
            $entrevista->setPersonal($obj);            
        }
    }

}

?>
