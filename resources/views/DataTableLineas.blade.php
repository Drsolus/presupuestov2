@extends('layouts.admin')
@section('content')
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Detalle Presupuesto</h4>
            <h6 class="card-subtitle"></h6>
            <div class="form-group row border">

                <div class="col-md-4">
                    <div class="form-group">
                        <label>ID Presupuesto</label>
                        <p>{{$presupuesto->idPresupuesto}}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Solicitante</label>
                        <p>{{ $presupuesto->nombreSolicitantePresupuesto }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Departamento</label>
                        <p>{{ $presupuesto->Departamento->nombreDepartamento }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Estado Presupuesto</label>
                        <p>{{ $presupuesto->CatalogoEstadoPresupuesto->nombreEstadoPresupuesto }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Estado Periodo Presupuestal</label>
                        <p>{{ $presupuesto->PeriodoPresupuestal->CatalogoEstadoPeriodoPresupuestal->nombreEstadoPeriodoPresupuestal }}</p>
                    </div>
                </div>

            </div>

            <div class="table-wrapper" style="">
                <div class="table-scroll" style="
  overflow:auto;
  ">


            <div class="table-responsive">
                <table id="data-table" class="table">
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
                    @foreach($presupuesto->LineasDeDetalle as $Linea)
                        <tr>
                            <th scope="row">{{$loop->index +1}} </th>
                            <td> {{$Linea->descripcionLineaDeDetalle}}</td>
                            <td>{{$presupuesto->Departamento->nombreDepartamento}}</td>
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

                    </tbody>
                </table>
            </div>
        </div>
    </div>
        </div>
    </div>
@endsection

@section('Scripts')
    <!-- Vendors: Data tables -->
    <script src="vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/bower_components/jszip/dist/jszip.min.js"></script>
    <script src="vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
@endsection



