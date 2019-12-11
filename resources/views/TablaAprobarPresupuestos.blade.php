
<div class="table-wrapper" style="position:relative">
    <div class="table-scroll" style="
  overflow:auto;
  margin-top:20px;">
        <div class="table-responsive">
            <table class="table table-bordered mb-0" style="margin: 30px;">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Descripcion</th>
                    <th>Departamento</th>
                    <th>NombreSolicitante</th>
                    <th>Valor Solicitado</th>
                    @foreach($PeriodoPresupuestal->CatalogoAtributoAdicional as $Atributo)
                        <th>{{$Atributo->nombreCatalogoAtributoAdicional}}</th>
                    @endforeach
                    <th>Estado Linea</th>
                    <th>Acciones</th>

                </tr>
                </thead>
                <tbody>
                @foreach($Departamentos as $Departamento)
                    @foreach($Departamento->LineaDeDetalle->where('fkIdEstadoLineaDeDetalle','=','2') as $Linea)
                        <tr>
                            <th scope="row">{{$loop->index +1}} </th>
                            <td> {{$Linea->descripcionLineaDeDetalle}}</td>
                            <td>{{$Departamento->nombreDepartamento}}</td>
                            <td>{{$Linea->Presupuesto->nombreSolicitantePresupuesto}}</td>
                            <td>{{$Linea->presupuestoSolicitado}}</td>
                            @foreach($Linea->AtributoAdicional as $AtributoLinea)
                                <td>{{$AtributoLinea->valorAtributoAdicional}}</td>

                            @endforeach
                            <td>{{$Linea->CatalogoEstadoLineaDeDetalle->nombreEstadoLineaDeDetalle}}</td>
                            <td>
                                <button onclick="aprobarLinea({{$Linea->idLineasDeDetalle}})"  class="btn btn-primary btn--icon-text"><i class="zmdi zmdi-check"></i>Aprobar</button>
                            </td>
                            <td>
                                <button onclick="rechazarLinea({{$Linea->idLineasDeDetalle}})" class="btn btn-danger btn--icon-text"><i class="zmdi zmdi-close"></i> Rechazar</button>
                            </td>

                        </tr>
                    @endforeach
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="row" style="margin-top: 30px">
    <h6>Antecedentes</h6>

</div>



<div class="table-wrapper" style="position:relative">
    <div class="table-scroll" style="
  overflow:auto;
  margin-top:20px;">
        <div class="table-responsive">
            <table class="table table-bordered mb-0" style="margin: 30px;">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Descripcion</th>
                    <th>Departamento</th>
                    <th>NombreSolicitante</th>
                    <th>Valor Solicitado</th>
                    <th>Valor Aprobado</th>
                    <th>Valor Ejecutado</th>
                    @foreach($PeriodoPresupuestal->CatalogoAtributoAdicional as $Atributo)
                        <th>{{$Atributo->nombreCatalogoAtributoAdicional}}</th>
                    @endforeach
                    <th>Estado Linea</th>


                </tr>
                </thead>
                <tbody>
                @foreach($Departamentos as $Departamento)
                    @foreach($Departamento->LineaDeDetalle->where('fkIdEstadoLineaDeDetalle','!=','2')->where('fkIdEstadoLineaDeDetalle','!=','5') as $Linea)
                        <tr>






                            <th scope="row">{{$loop->index +1}} </th>
                            <td> {{$Linea->descripcionLineaDeDetalle}}</td>
                            <td>{{$Departamento->nombreDepartamento}}</td>
                            <td>{{$Linea->Presupuesto->nombreSolicitantePresupuesto}}</td>
                            <td>{{$Linea->presupuestoSolicitado}}</td>
                            <td>{{$Linea->presupuestoAprobado}}</td>
                            <td>{{$Linea->presupuestoEjecutado}}</td>
                            @foreach($Linea->AtributoAdicional as $AtributoLinea)
                                <td>{{$AtributoLinea->valorAtributoAdicional}}</td>

                            @endforeach
                            <td>{{$Linea->CatalogoEstadoLineaDeDetalle->nombreEstadoLineaDeDetalle}}</td>


                        </tr>

                    @endforeach
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
