<?php

namespace Apps\SiteAdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Compra
 */
class Compra
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var \DateTime
     */
    private $created;

    /**
     * @var \DateTime
     */
    private $updated;

    /**
     * @var integer
     */
    private $estado;

    /**
     * @var \Apps\SiteAdminBundle\Entity\Detallepago
     */
    private $detallePago;

    /**
     * @var \Apps\SiteAdminBundle\Entity\Detalleenvio
     */
    private $detalleEnvio;

    /**
     * @var \Apps\SiteAdminBundle\Entity\Usuario
     */
    private $usuario;


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
     * Set created
     *
     * @param \DateTime $created
     * @return Compra
     */
    public function setCreated($created)
    {
        $this->created = $created;
    
        return $this;
    }

    /**
     * Get created
     *
     * @return \DateTime 
     */
    public function getCreated()
    {
        return $this->created;
    }

    /**
     * Set updated
     *
     * @param \DateTime $updated
     * @return Compra
     */
    public function setUpdated($updated)
    {
        $this->updated = $updated;
    
        return $this;
    }

    /**
     * Get updated
     *
     * @return \DateTime 
     */
    public function getUpdated()
    {
        return $this->updated;
    }

    /**
     * Set estado
     *
     * @param integer $estado
     * @return Compra
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;
    
        return $this;
    }

    /**
     * Get estado
     *
     * @return integer 
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set detallePago
     *
     * @param \Apps\SiteAdminBundle\Entity\Detallepago $detallePago
     * @return Compra
     */
    public function setDetallePago(\Apps\SiteAdminBundle\Entity\Detallepago $detallePago = null)
    {
        $this->detallePago = $detallePago;
    
        return $this;
    }

    /**
     * Get detallePago
     *
     * @return \Apps\SiteAdminBundle\Entity\Detallepago 
     */
    public function getDetallePago()
    {
        return $this->detallePago;
    }

    /**
     * Set detalleEnvio
     *
     * @param \Apps\SiteAdminBundle\Entity\Detalleenvio $detalleEnvio
     * @return Compra
     */
    public function setDetalleEnvio(\Apps\SiteAdminBundle\Entity\Detalleenvio $detalleEnvio = null)
    {
        $this->detalleEnvio = $detalleEnvio;
    
        return $this;
    }

    /**
     * Get detalleEnvio
     *
     * @return \Apps\SiteAdminBundle\Entity\Detalleenvio 
     */
    public function getDetalleEnvio()
    {
        return $this->detalleEnvio;
    }

    /**
     * Set usuario
     *
     * @param \Apps\SiteAdminBundle\Entity\Usuario $usuario
     * @return Compra
     */
    public function setUsuario(\Apps\SiteAdminBundle\Entity\Usuario $usuario = null)
    {
        $this->usuario = $usuario;
    
        return $this;
    }

    /**
     * Get usuario
     *
     * @return \Apps\SiteAdminBundle\Entity\Usuario 
     */
    public function getUsuario()
    {
        return $this->usuario;
    }
}