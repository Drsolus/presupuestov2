@extends('layouts.admin')

@section('content')

<h1>Dashboard</h1>


<div>
<h2>
<label>Bienvenido {{ Auth::user()->name}}</label>
</h2>
</div>


@if(Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria' )
    <div align="center" class="row">
        <h2>Periodo Presupuestal {{$PeriodoPresupuestal->nombrePeriodoPresupuestal}} en Proceso de solicitudes desde {{$PeriodoPresupuestal->fechaHoraInicioPeriodoPresupuestal}}</h2>
    </div>
    <br>
    <div class="row quick-stats">
        <div class="col-sm-6 col-md-3">
           <div class="quick-stats__item">
               <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->count()}}</h2>
                    <small>Total Solicitudes</small>
               </div>
           </div>

        </div>

            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','1')->count()}}</h2>
                        <small>Solicitudes por Activar</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','2')->count()}}</h2>
                    <small>Solicitudes en Solicitud </small>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','3')->count()}}</h2>
                    <small>Solicitudes Enviadas</small>
                </div>
            </div>
        </div>

            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','5')->count()}}</h2>
                        <small>Solicitudes Aprobadas </small>
                        <small>Totalmente</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','6')->count()}}</h2>
                    <small>Solicitudes Aprobadas</small>
                    <small>con Observaciones</small>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','7')->count()}}</h2>
                    <small>Solicitudes Rechazadas</small>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','8')->count()}}</h2>
                    <small>Solicitudes En Ejecucion</small>
                </div>
            </div>

        </div>

    </div>
    <div class="row">
        <canvas id="myChart" width="400" height="400"></canvas>
    </div>

@endif
@endsection

@section('Scripts')

@endsection
