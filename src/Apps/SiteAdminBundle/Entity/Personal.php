<?php

namespace Apps\SiteAdminBundle\Entity;
use Symfony\Component\HttpFoundation\File\UploadedFile;

use Doctrine\ORM\Mapping as ORM;

/**
 * Personal
 */
class Personal
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $nombre;

    /**
     * @var string
     */
    private $imagen;

    /**
     * @var string
     */
    private $apodo;

    /**
     * @var float
     */
    private $estatura;

    /**
     * @var string
     */
    private $sponsor;

    /**
     * @var string
     */
    private $anecdota;

    /**
     * @var integer
     */
    private $edad;

    /**
     * @var string
     */
    private $extra1;

    /**
     * @var string
     */
    private $extra2;

    /**
     * @var \Doctrine\Common\Collections\Collection
     */
    private $entrevistas;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->entrevistas = new \Doctrine\Common\Collections\ArrayCollection();
    }
    
    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     * @return Personal
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    
        return $this;
    }

    /**
     * Get nombre
     *
     * @return string 
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set imagen
     *
     * @param string $imagen
     * @return Personal
     */
    public function setImagen($imagen)
    {
        $this->imagen = $imagen;
    
        return $this;
    }

    /**
     * Get imagen
     *
     * @return string 
     */
    public function getImagen()
    {
        return $this->imagen;
    }

    /**
     * Set apodo
     *
     * @param string $apodo
     * @return Personal
     */
    public function setApodo($apodo)
    {
        $this->apodo = $apodo;
    
        return $this;
    }

    /**
     * Get apodo
     *
     * @return string 
     */
    public function getApodo()
    {
        return $this->apodo;
    }

    /**
     * Set estatura
     *
     * @param float $estatura
     * @return Personal
     */
    public function setEstatura($estatura)
    {
        $this->estatura = $estatura;
    
        return $this;
    }

    /**
     * Get estatura
     *
     * @return float 
     */
    public function getEstatura()
    {
        return $this->estatura;
    }

    /**
     * Set sponsor
     *
     * @param string $sponsor
     * @return Personal
     */
    public function setSponsor($sponsor)
    {
        $this->sponsor = $sponsor;
    
        return $this;
    }

    /**
     * Get sponsor
     *
     * @return string 
     */
    public function getSponsor()
    {
        return $this->sponsor;
    }

    /**
     * Set anecdota
     *
     * @param string $anecdota
     * @return Personal
     */
    public function setAnecdota($anecdota)
    {
        $this->anecdota = $anecdota;
    
        return $this;
    }

    /**
     * Get anecdota
     *
     * @return string 
     */
    public function getAnecdota()
    {
        return $this->anecdota;
    }

    /**
     * Set edad
     *
     * @param integer $edad
     * @return Personal
     */
    public function setEdad($edad)
    {
        $this->edad = $edad;
    
        return $this;
    }

    /**
     * Get edad
     *
     * @return integer 
     */
    public function getEdad()
    {
        return $this->edad;
    }

    /**
     * Set extra1
     *
     * @param string $extra1
     * @return Personal
     */
    public function setExtra1($extra1)
    {
        $this->extra1 = $extra1;
    
        return $this;
    }

    /**
     * Get extra1
     *
     * @return string 
     */
    public function getExtra1()
    {
        return $this->extra1;
    }

    /**
     * Set extra2
     *
     * @param string $extra2
     * @return Personal
     */
    public function setExtra2($extra2)
    {
        $this->extra2 = $extra2;
    
        return $this;
    }

    /**
     * Get extra2
     *
     * @return string 
     */
    public function getExtra2()
    {
        return $this->extra2;
    }

    /**
     * Add entrevistas
     *
     * @param \Apps\SiteAdminBundle\Entity\Entrevista $entrevistas
     * @return Personal
     */
    public function addEntrevista(\Apps\SiteAdminBundle\Entity\Entrevista $entrevistas)
    {
        $this->entrevistas[] = $entrevistas;
    
        return $this;
    }

    /**
     * Remove entrevistas
     *
     * @param \Apps\SiteAdminBundle\Entity\Entrevista $entrevistas
     */
    public function removeEntrevista(\Apps\SiteAdminBundle\Entity\Entrevista $entrevistas)
    {
        $this->entrevistas->removeElement($entrevistas);
    }

    /**
     * Get entrevistas
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getEntrevistas()
    {
        return $this->entrevistas;
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
    public function setFile(UploadedFile $file = null) {
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
                __DIR__ . '/../../../../web/uploads/personal/', $this->getFile()->getClientOriginalName()
        );

        // set the path property to the filename where you've saved the file
        $this->imagen = $this->getFile()->getClientOriginalName();

        // clean up the file property as you won't need it anymore
        $this->setFile(null);
    }

}