@extends('layouts.admin')

@section('content')

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Creacion de Departamentos</h4>
            <h6 class="card-subtitle">Llene el formulario a continuacion para crear un nuevo Departamento</h6>

            <h3 class="card-body__title">Formulario de Creacion Departamento</h3>

            <form method="POST" action="{{route('CrearDepartamento')}}">
                @csrf

                <div class="form-group row">
                    <label for="nombreDepartamento" class="col-sm-4 col-form-label text-md-right">Nombre del Departamento</label>

                    <div class="col-md-6">
                        <input maxlength="100" id="nombreDepartamento" name="nombreDepartamento" placeholder="Departamento de Ciencias" type="text" class="form-control" required autofocus>

                    </div>
                </div>

                <div class="form-group row">
                    <label for="posicionDepartamento" class="col-md-4 col-form-label text-md-right">Departamento Superior</label>

                    <div class="col-md-6">
                        <select  name="posicionDepartamento" required class="form-control"  >
                        <option value="">Seleccione Departamento Superior</option>
                        @foreach(\App\Departamento::all() as $Departamento)
                            <option value="{{$Departamento->idDepartamento}}">{{$Departamento->nombreDepartamento}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group row mb-0">
                    <div class="col-md-8 offset-md-4">
                        <input type="submit" value="Crear Departamento" class="btn btn-primary">
                    </div>
                </div>
            </form>

        </div>
    </div>
@endsection
@section('Scripts')
@endsection
