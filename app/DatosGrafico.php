<?php
class DatosGrafico
{
   Private $Presupuesto;
   Private $PresupuestoSolicitado;
   Private $PresupuestoAprobado;
   Private $PresupuestoEjecutado;
    /**
     * DatosGrafico constructor.
     */

    function __construct()
    {

    }

    /**
     * @return mixed
     */
    public function getPresupuesto()
    {
        return $this->Presupuesto;
    }

    /**
     * @param mixed $Presupuesto
     */
    public function setPresupuesto($Presupuesto): void
    {
        $this->Presupuesto = $Presupuesto;
    }

    /**
     * @return mixed
     */
    public function getPresupuestoSolicitado()
    {
        return $this->PresupuestoSolicitado;
    }

    /**
     * @param mixed $PresupuestoSolicitado
     */
    public function setPresupuestoSolicitado($PresupuestoSolicitado): void
    {
        $this->PresupuestoSolicitado = $PresupuestoSolicitado;
    }

    /**
     * @return mixed
     */
    public function getPresupuestoAprobado()
    {
        return $this->PresupuestoAprobado;
    }

    /**
     * @param mixed $PresupuestoAprobado
     */
    public function setPresupuestoAprobado($PresupuestoAprobado): void
    {
        $this->PresupuestoAprobado = $PresupuestoAprobado;
    }




}

