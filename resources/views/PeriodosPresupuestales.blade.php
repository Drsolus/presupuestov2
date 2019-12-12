@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">PeriodosPresupuestales</h1>
            <div class="row">
                <div class="col-sm-12">

                    <div class="table-wrapper" style="position:relative">
                        <div class="table-scroll" style="
  overflow:auto;
  margin-top:20px;">
                            <div class="table-responsive">
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
                                <td>{{ $Estado=$PeriodoPresupuestal->CatalogoEstadoPeriodoPresupuestal->nombreEstadoPeriodoPresupuestal}}</td>
                                <td><a href="{{ route('detallePeriodoPresupuestal',['id'=>$PeriodoPresupuestal->idPeriodoPresupuestal]) }}">Ver Detalle</a>
                                </td>
                            </tr>
                            </tbody>
                        @endforeach
                    </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

