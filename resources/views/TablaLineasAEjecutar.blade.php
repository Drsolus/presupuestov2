@if($LineasDeDetalle->first() == '' )
<h3>No posee un presupuesto en ejecuccion actualmente</h3>
@else

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
            <th>NombreSolicitante</th>
            <th>Valor Solicitado</th>
            <th>Valor Aprobado</th>
            <th>Valor Ejecutado</th>
            @foreach($AtributosARenderizar as $Atributo)
                <th>{{$Atributo->nombreCatalogoAtributoAdicional}}</th>
            @endforeach
            <th>Acciones</th>

        </tr>
        </thead>
        <tbody>
        @foreach($LineasDeDetalle as $Linea)
            <tr>
                <th scope="row">{{$loop->index +1}} </th>
                <th>{{$Linea->Presupuesto->nombreSolicitantePresupuesto}}</th>
                <td> {{$Linea->descripcionLineaDeDetalle}}</td>
                <td>{{$Linea->presupuestoSolicitado}}</td>
                <td>{{$Linea->presupuestoAprobado}}</td>
                <td>{{$Linea->presupuestoEjecutado}}</td>
                @foreach($Linea->AtributoAdicional as $AtributoLinea)
                    <td>{{$AtributoLinea->valorAtributoAdicional}}</td>

                @endforeach
                <td>
                    <button onclick="MostrarModal({{$Linea->idLineasDeDetalle}})" class="btn btn-dark btn--icon-text"><i class="zmdi zmdi-arrow-back"></i>Actualizar</button>
                </td>

            </tr>
        @endforeach
        </tbody>
    </table>
</div>
</div>
</div>
@endif
