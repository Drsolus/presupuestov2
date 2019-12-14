@extends('layouts.admin')

@section('content')

<h1>Dashboard</h1>


<div>
<h2>
<label>Bienvenido {{ Auth::user()->name}}</label>
</h2>
</div>


@if(Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria')
    @if($PeriodoPresupuestal != null)
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
                        <h2>{{$Activadas=$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','1')->count()}}</h2>
                        <small>Solicitudes por Activar</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$Solicitud= $PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','2')->count()}}</h2>
                    <small>Solicitudes en Solicitud </small>
                </div>
            </div>

        </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$Enviadas= $PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','3')->count()}}</h2>
                    <small>Solicitudes Enviadas</small>
                </div>
            </div>
        </div>

            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{$Aprobadas= $PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','5')->count()}}</h2>
                        <small>Solicitudes Aprobadas </small>
                        <small>Totalmente</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$Observadas=$PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','6')->count()}}</h2>
                    <small>Solicitudes Aprobadas</small>
                    <small>con Observaciones</small>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{$Rechazadas= $PeriodoPresupuestal->Presupuesto->where('fkEstadoPresupuesto','=','7')->count()}}</h2>
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
        <canvas id="pie-chart" width="100" height="50"></canvas>

    </div>

        <div style="width: 100%"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
            <canvas id="canvas" style="display: block; width: 1000px; height: 500px;" width="1000" height="500" class="chartjs-render-monitor"></canvas>
        </div>

@endif
@endif
@endsection

@section('Scripts')
    @if(Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria')
        @if($PeriodoPresupuestal != null)
            @if($PeriodosPresupuestales->isNotEmpty())
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <script>
        new Chart(document.getElementById("pie-chart"), {
            type: 'doughnut',
            data: {
                labels: ["Presupuestos por Activar", "Presupuestos En Solicitud", "Presupuestos Enviados", "Presupuestos Aprobados", "Presupuestos Activados Con observaciones",'Presupuestos Rechazados'],
                datasets: [{
                    label: "Estados Presupuestos",
                    backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","Orange","#c45850"],
                    data: [{{$Activadas}},{{$Solicitud}},{{$Enviadas}},{{$Aprobadas}},{{$Observadas}},{{$Rechazadas}}]
                }]
            },
            options: {
                legend: {
                    labels: {
                        fontColor: "white",
                        fontSize: 15
                    }
                },
                title: {
                    display: true,
                    text: '{{$PeriodoPresupuestal->nombrePeriodoPresupuestal}}',
                    fontColor: "white",
                    fontSize: 18
                }
            }
        });

    </script>
    <script>
        var barChartData = {
            labels: [ @foreach($PeriodosPresupuestales as $Periodo) '{{$Periodo->nombrePeriodoPresupuestal}}', @endforeach],
            datasets: [{
                label: 'Total Montos Solicitados',
                backgroundColor: "#FF6384",
                data: [
                    @foreach($PeriodosPresupuestales as $Periodo)
                        "{{$Periodo->LineaDeDetalle->sum('presupuestoSolicitado')}}",
                    @endforeach

                ]
            }, {
                label: 'Total Montos Aprobados',
                backgroundColor: "#36A2EB",
                data: [
                    @foreach($PeriodosPresupuestales as $Periodo)
                        "{{$Periodo->LineaDeDetalle->sum('presupuestoAprobado')}}",
                    @endforeach
                ]
            }, {
                label: 'Total Montos Ejecutados',
                backgroundColor: "#00AA57",
                data: [
                    @foreach($PeriodosPresupuestales as $Periodo)
                        "{{$Periodo->LineaDeDetalle->sum('presupuestoEjecutado')}}",
                    @endforeach
                ]
            }]

        };
        window.onload = function() {
            var ctx = document.getElementById('canvas').getContext('2d');
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    legend: {
                        labels: {
                            fontColor: "white",
                            fontSize: 15
                        }
                    },
                    title: {
                        display: true,
                        text: 'Estado Presupuestos Historico',
                        fontColor: "white",
                        fontSize: 18
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    responsive: true,
                    scales: {
                        xAxes: [{
                            stacked: false,
                            scaleLabel: {
                                display: true,
                                labelString: 'Periodos Presupuestales',
                                fontColor:'white',
                                fontSize:14
                            },
                            ticks: {
                                fontColor: "white",
                                fontSize: 15
                            }
                        }],
                        yAxes: [{
                            stacked: false,
                            scaleLabel: {
                                display: true,
                                labelString: 'Monto en Pesos Chilenos',
                                fontColor:'white',
                                fontSize:14
                            },
                            ticks: {
                                fontColor: "white",
                                fontSize: 15
                            }
                        }],
                    }
                }
            });
        };

    </script>
            @endif
            @endif
            @endif
@endsection
