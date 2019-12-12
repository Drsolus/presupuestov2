@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Presupuestos</h1>
            <div class="row">
            <div class="table-responsive">
                <table class="table table-hover table-condensed table-bondered">
                    <thead>
                    <tr>

                        <th>Nombre Solicitante</th>
                        <th>Departamento</th>
                        <th>Estado Presupuesto</th>

                        <th>Estado Periodo Presupuestal</th>
                        <th>Opciones</th>
                    </tr>
                    </thead>
                    @foreach($presupuestos as $presupuesto)
                        <tbody>
                        <tr>

                            <td>{{ $presupuesto->nombreSolicitantePresupuesto }}</td>
                            <td>{{ $presupuesto->Departamento->nombreDepartamento }}</td>
                            <td>{{ $Estado= $presupuesto->CatalogoEstadoPresupuesto->nombreEstadoPresupuesto}}</td>
                            <td>{{ $presupuesto->PeriodoPresupuestal->CatalogoEstadoPeriodoPresupuestal->nombreEstadoPeriodoPresupuestal }}</td>

                            <td><a href="{{ route('mostrarDetalle',['id'=>$presupuesto->idPresupuesto]) }}">Ver Detalle</a>
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
