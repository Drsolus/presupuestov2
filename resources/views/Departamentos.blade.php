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

                            <th>ID Departamento</th>
                            <th>Nombre Departamento</th>
                            <th>Posicion Departamento</th>
                        </tr>
                        </thead>
                        @foreach($Departamentos as $Departamento)
                            <tbody>
                            <tr>

                                <td>{{ $Departamento->idDepartamento }}</td>
                                <td>{{ $Departamento->nombreDepartamento }}</td>
                                <td>{{$Departamento->posicionDepartamento}}</td>

                            </tr>
                            </tbody>
                        @endforeach
                    </table>

                </div>
            </div>
        </div>
    </div>



@endsection

