<?php

namespace Apps\SiteAdminBundle\Entity;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\Mapping as ORM;

/**
 * Categoria
 */
class Categoria {

    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $name;

    /**
     * @var string
     */
    private $imagen;

    /**
     * @var string
     */
    private $descripcion;

    /**
     * @var integer
     */
    private $estado;

    /**
     * @var \DateTime
     */
    private $created;

    /**
     * @var \DateTime
     */
    private $updated;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $subcategorias;

    /**
     * Constructor
     */
    public function __construct() {
        $this->subcategorias = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId() {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Categoria
     */
    public function setName($name) {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName() {
        return $this->name;
    }

    /**
     * Set imagen
     *
     * @param string $imagen
     * @return Categoria
     */
    public function setImagen($imagen) {
        $this->imagen = $imagen;

        return $this;
    }

    /**
     * Get imagen
     *
     * @return string 
     */
    public function getImagen() {
        return $this->imagen;
    }

    /**
     * Set descripcion
     *
     * @param string $descripcion
     * @return Categoria
     */
    public function setDescripcion($descripcion) {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string 
     */
    public function getDescripcion() {
        return $this->descripcion;
    }

    /**
     * Set estado
     *
     * @param integer $estado
     * @return Categoria
     */
    public function setEstado($estado) {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return integer 
     */
    public function getEstado() {
        return $this->estado;
    }

    /**
     * Set created
     *
     * @param \DateTime $created
     * @return Categoria
     */
    public function setCreated($created) {
        $this->created = $created;

        return $this;
    }

    /**
     * Get created
     *
     * @return \DateTime 
     */
    public function getCreated() {
        return $this->created;
    }

    /**
     * Set updated
     *
     * @param \DateTime $updated
     * @return Categoria
     */
    public function setUpdated($updated) {
        $this->updated = $updated;

        return $this;
    }

    /**
     * Get updated
     *
     * @return \DateTime 
     */
    public function getUpdated() {
        return $this->updated;
    }

    /**
     * Add subcategorias
     *
     * @param \Apps\SiteAdminBundle\Entity\Subcategoria $subcategorias
     * @return Categoria
     */
    public function addSubcategoria(\Apps\SiteAdminBundle\Entity\Subcategoria $subcategorias) {
        $this->subcategorias[] = $subcategorias;

        return $this;
    }

    /**
     * Remove subcategorias
     *
     * @param \Apps\SiteAdminBundle\Entity\Subcategoria $subcategorias
     */
    public function removeSubcategoria(\Apps\SiteAdminBundle\Entity\Subcategoria $subcategorias) {
        $this->subcategorias->removeElement($subcategorias);
    }

    /**
     * Get subcategorias
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getSubcategorias() {
        return $this->subcategorias;
    }

    /**
     * Unmapped property to handle file uploads
     */
    private $file;

    /**
     * Sets file.
     *
     * @param UploadedFile $file
     */
    public function setFile( UploadedFile $file = null) {
        $this->file = $file;
    }

    /**
     * Get file.
     *
     * @return UploadedFile
     */
    public function getFile() {
        return $this->file;
    }

    /**
     * Manages the copying of the file to the relevant place on the server
     */
    public function upload() {
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
            return;
        }

        // we use the original file name here but you should
        // sanitize it at least to avoid any security issues
        // move takes the target directory and target filename as params
        $this->getFile()->move(
                __DIR__ . '/../../../../web/uploads/categorias/', $this->getFile()->getClientOriginalName()
        );

        // set the path property to the filename where you've saved the file
        $this->imagen = $this->getFile()->getClientOriginalName();

        // clean up the file property as you won't need it anymore
        $this->setFile(null);
    }

    function __toString() {
        return $this->getName();
    }

}