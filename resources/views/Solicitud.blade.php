@extends('layouts.admin')

@section('content')




<div class="card">
    <div class="card-body">
                            <h4 class="card-title">Solicitudes de Presupuesto</h4>
                            <h6 class="card-subtitle">Llene el formulario a continuacion para realizar su solicitud de presupuesto</h6>

                            <h3 class="card-body__title">Formulario de solicitud presupuestal</h3>
                            <p></p>


                                    <div class="Form-group">
                                        <div class="input-group">
                                        <input required name="Descripcion" type="text" class="form-control form-control-lg" placeholder="Descripcion" style="margin: 15px;">
                                        </div>
                                        <div class="input-group">
                                        <span class="input-group-addon">$</span>
                                        <input name="PresupuestoSolicitado" type="number" class="form-control form-control-lg" placeholder="Valor Solicitado">
                                        </div>
                                        @foreach($AtributosARenderizar as $Atributo)
                                            <div class="input-group">
                                            <input name="{{$Atributo->nombreCatalogoAtributoAdicional}}" type="text" class="form-control form-control-lg" placeholder="{{$Atributo->nombreCatalogoAtributoAdicional}}" style="margin: 15px;">
                                            </div>
                                        @endforeach
                                        <button type="button" class="btn btn-success">Añadir</button>
                                    </div>

                                    <div>
                                        <table class="table mb-0" style="margin: 30px;">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Descripcion</th>
                                                <th>Valor Solicitado</th>
                                                @foreach($AtributosARenderizar as $Atributo)
                                                    <th>{{$Atributo->nombreCatalogoAtributoAdicional}}</th>
                                                @endforeach
                                                <th></th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                @foreach($LineasDeDetalle as $Linea)
                                                <th scope="row">{{$loop->index +1}} </th>
                                                <td>{{$Linea->descripcionLineaDeDetalle}}</td>
                                                <td>{{$Linea->presupuestoSolicitado}}</td>
                                                @foreach($Linea->AtributoAdicional() as $Atributo)
                                                    <td>{{$Atributo->valorAtributoAdicional}}</td>
                                                    @endforeach

                                               @endforeach
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>


    </div>
</div>
@endsection
