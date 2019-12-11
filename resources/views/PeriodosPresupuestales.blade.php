@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">PeriodosPresupuestales</h1>
            <div class="row">
                <div class="col-sm-12">
                    <table class="table table-hover table-condensed table-bondered">
                        <thead>
                        <tr>
                            <th>ID Periodo Presupuestal</th>
                            <th>Nombre Periodo Presupuestal</th>
                            <th>Fecha Inicio de Solicitudes</th>
                            <th>Fecha Termino de Solicitudes</th>
                            <th>Estado Periodo Presupuestal</th>

                        </tr>
                        </thead>
                        @foreach($PeriodosPresupuestales as $PeriodoPresupuestal)
                            <tbody>
                            <tr>
                                <td>{{ $PeriodoPresupuestal->idPeriodoPresupuestal }}</td>
                                <td>{{ $PeriodoPresupuestal->nombrePeriodoPresupuestal}}</td>
                                <td>{{ $PeriodoPresupuestal->fechaHoraInicioPeriodoPresupuestal}}</td>
                                <td>{{ $PeriodoPresupuestal->fechaHoraTerminoPeriodoPresupuestal }}</td>
                                <td>{{ $PeriodoPresupuestal->CatalogoEstadoPeriodoPresupuestal->nombreEstadoPeriodoPresupuestal}}</td>
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

