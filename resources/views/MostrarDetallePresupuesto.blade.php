@extends('layouts.app ')
@section('content')
    <div class="card">
        <div class="card-header">
            <label>Detalle de Presupuesto:</label>
        </div>
        <div class="card-body">
            <div class="form-group row border">
                @foreach($presupuestos as $presupuesto)
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>ID Presupuesto</label>
                            <p>{{ $presupuesto->idPresupuesto }}</p>
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
                            <p>{{ $presupuesto->nombreDepartamento }}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Estado Presupuesto</label>
                            <p>{{ $presupuesto->nombreEstadoPresupuesto }}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Estado Periodo Presupuestal</label>
                            <p>{{ $presupuesto->nombreEstadoPeriodoPresupuestal }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-hover table-condensed table-bondered">
                        <thead>
                        <tr>
                            <th>Id Linea</th>
                            <th>Descripcion</th>
                            <th>Valor Solicitado</th>
                            @foreach($lineas as $linea)
                                <th>{{ $linea->nombreAtributoAdicional }}</th>
                            @endforeach
                            <th>Presupuesto a Aprobar</th>
                        </tr>
                        </thead>
                        @foreach($lineas as $linea)
                            <tbody>
                            <tr>
                                <td>{{ $linea->idLineasDeDetalle }}</td>
                                <td>{{ $linea->descripcionLineaDeDetalle }}</td>
                                <td>{{ $linea->presupuestoSolicitado }}</td>
                                <td>{{ $linea->valorAtributoAdicional }}</td>
                                <td><input type="number" name="valoraAprobar"></td>
                                <td>
                                    <button class="btn btn-success glyphicon glyphicon-ok">Aprobar</button>
                                </td>
                                <td>
                                    <button class="btn btn-danger glyphicon glyphicon-remove">Rechazar</button>
                                </td>
                            </tr>
                            </tbody>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>


@endsection
