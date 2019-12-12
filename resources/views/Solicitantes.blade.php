@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Departamentos</h1>
            <div class="row">
                <div class="table-responsive">
                    <table class="table table-hover table-condensed table-bondered">
                        <thead>
                        <tr>

                            <th>Nombre Solicitante</th>
                            <th>Apellido Paterno Solicitante</th>
                            <th>Apellido Materno Solicitante</th>
                            <th>Departamento</th>

                            <th>Estado</th>
                        </tr>
                        </thead>
                        @foreach($Solicitantes as $Solicitante)
                            <tbody>
                            <tr>

                                <td>{{ $Solicitante->nombreSolicitante }}</td>
                                <td>{{ $Solicitante->apellidoPaternoSolicitante }}</td>
                                <td>{{$Solicitante->apellidoMaternoSolicitante}}</td>
                                <td>{{$Solicitante->Departamento->nombreDepartamento}}</td>

                                @if($Solicitante->fkIdEstadoSolicitante == '1')
                                <th>Activo</th>
                                    @else
                                    <th>Desactivado</th>
                                @endif

                            </tr>
                            </tbody>
                        @endforeach
                    </table>

                </div>
            </div>
        </div>
    </div>



@endsection

