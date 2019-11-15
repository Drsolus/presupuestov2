@extends('layouts.admin')

@section('content')

<h1>Dashboard</h1>


<div>
<h2>
<label>Bienvenido {{ Auth::user()->name}}</label>
</h2>
</div>


@if(Auth::user()->role === 'Finanzas')
    <div align="center" class="row">
        <h2>Periodo Presupuestal en Proceso de solicitudes del {{$datosCabezera[0]}} al {{$datosCabezera[1]}} </h2>
    </div>
    <br>
    <div class="row quick-stats">
        <div class="col-sm-6 col-md-3">
           <div class="quick-stats__item">
               <div class="quick-stats__info ">
                    <h2>{{ $datosCabezera[2]}}</h2>
                    <small>Total Solicitudes</small>
               </div>
           </div>

        </div>

            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{ $datosCabezera[3]}}</h2>
                        <small>Solicitudes en proceso</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{ $datosCabezera[4]}}</h2>
                    <small>Solicitudes guardadas</small>
                </div>
            </div>

        </div>
            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{ $datosCabezera[5]}}</h2>
                        <small>Solicitudes Enviadas</small>
                    </div>
                </div>

            </div>
        <div class="col-sm-6 col-md-3">
            <div class="quick-stats__item">
                <div class="quick-stats__info ">
                    <h2>{{ $datosCabezera[6]}}</h2>
                    <small>Solicitudes Revisadas</small>
                </div>
            </div>

        </div>
            <div class="col-sm-6 col-md-3">
                <div class="quick-stats__item">
                    <div class="quick-stats__info ">
                        <h2>{{ $datosCabezera[7]}}</h2>
                        <small>Solicitudes rechazadas</small>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" integrity="sha256-Uv9BNBucvCPipKQ2NS9wYpJmi8DTOEfTA/nH2aoJALw=" crossorigin="anonymous"></script>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                datasets: [{
                    label: '# of Votes',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>

@endsection
