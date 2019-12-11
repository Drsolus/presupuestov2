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
            <th>Valor Solicitado</th>
            @foreach($AtributosARenderizar as $Atributo)
                <th>{{$Atributo->nombreCatalogoAtributoAdicional}}</th>
            @endforeach
            <th>Estado Linea De Detalle</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        @foreach($LineasDeDetalle as $Linea)
            <tr>
                <th scope="row">{{$loop->index +1}} </th>
                <td> {{$Linea->descripcionLineaDeDetalle}}</td>
                <td>{{$Linea->presupuestoSolicitado}}</td>
                @foreach($Linea->AtributoAdicional as $AtributoLinea)
                    <td>{{$AtributoLinea->valorAtributoAdicional}}</td>

                @endforeach
                <td>{{$Linea->CatalogoEstadoLineaDeDetalle->nombreEstadoLineaDeDetalle}}</td>

                <td>
                    @if($Linea->CatalogoEstadoLineaDeDetalle->nombreEstadoLineaDeDetalle == 'Guardada')
                    <button onclick="editarvalor({{$Linea->idLineasDeDetalle}})" class="btn btn-dark btn--icon-text"><i class="zmdi zmdi-arrow-back"></i> Modificar</button>
                    @endif
                </td>
                <td>
                    @if($Linea->CatalogoEstadoLineaDeDetalle->nombreEstadoLineaDeDetalle == 'Guardada')
                    <button type="button" onclick="borrarLinea({{$Linea->idLineasDeDetalle}})" class="btn btn-danger">Borrar</button>
                    @endif
                </td>

            </tr>
        @endforeach
        </tbody>
    </table>
</div>
</div>
</div>
<div class="Button-Container">
    <div>
        <input style="margin-top: 40px" type="Button" class="btn btn-info" Value="Enviar Presupuesto" onclick="enviarPresupuesto({{$Presupuesto->idPresupuesto}})">
    </div>
</div>



