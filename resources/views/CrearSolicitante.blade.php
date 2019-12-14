@extends('layouts.admin')

@section('content')

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Creacion de Solicitantes</h4>
            <h6 class="card-subtitle">Llene el formulario a continuacion para crear un nuevo solicitante</h6>

            <h3 class="card-body__title">Formulario de Creacion de Solicitantes</h3>
            <p></p>

            <form method="POST" action="{{route('CrearSolicitante')}}" id="formprincipal">
                @csrf
                <div class="Form-group">
                    <div style="margin-top: 20px" class="input-group">
                        <label class="col-md-4 col-form-label text-md-right" for="nombreSolicitante">Ingrese nombre del solicitante:</label>

                        <input required name="nombreSolicitante" type="text" class="form-control form-control-lg"
                               placeholder="Nombre Solicitante">

                    </div>
                    <div style="margin-top: 20px" class="input-group">
                        <label class="col-md-4 col-form-label text-md-right" for="">Ingrese Apellido Paterno:</label>
                        <input required name="paternoSolicitante" type="text" class="form-control form-control-lg"
                               placeholder="Apellido Paterno">
                    </div>
                    <div style="margin-top: 20px" class="input-group">
                        <label class="col-md-4 col-form-label text-md-right" for="">Ingrese Apellido Paterno:</label>

                        <input required name="maternoSolicitante" type="text" class="form-control form-control-lg"
                               placeholder="Apellido Materno">

                    </div>
                    <div style="margin-top: 20px" class="input-group">
                        <label class="col-md-4 col-form-label text-md-right" for="emailSolicitante">Ingrese Email:</label>

                            <input required name="email" type="email" class="form-control form-control-lg"
                                   placeholder="email@ciisa.cl">

                    </div>
                    <div style="margin-top: 20px" class="input-group">
                        <label class="col-md-4 col-form-label text-md-right" for="">Seleccione Departamento:</label>

                            <select  name="idDepartamento" required class="form-control"  >
                                <option style="margin: 40px;
    background: rgb(17,57,54);
    color: #FFFFFF;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);" value="">Seleccione Departamento Superior</option>
                                @foreach($Departamentos as $Departamento)
                                    <option style="margin: 40px;
    background: rgb(17,57,54);
    color: #FFFFFF;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);" value="{{$Departamento->idDepartamento}}">{{$Departamento->nombreDepartamento}}</option>
                                @endforeach
                            </select>

                    </div>
                    <div style="margin-top: 20px" class="input-group">
                        <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Ingrese Contraseña') }}</label>


                            <input  id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                            @if ($errors->has('password'))
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                            @endif

                    </div>

                    <div style="margin-top: 20px" class="input-group">
                        <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirme Contraseña') }}</label>


                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>

                    </div>


                    <div class="input-group">
                        <button id="btn-submit" align="Justify" style="margin-top: 10px" type="submit"
                                class="btn btn-success">Añadir
                        </button>
                    </div>
                </div>
            </form>
            <div>
            </div>

        </div>
    </div>





@endsection
