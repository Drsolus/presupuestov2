@extends('layouts.admin')

@section('content')

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Creacion de Periodo Presupuestal</h4>
            <h6 class="card-subtitle">Llene el formulario a continuacion para crear un nuevo periodo Presupuestal</h6>

            <h3 class="card-body__title">Formulario de Creacion de PeriodoPresupuestal</h3>
            <p></p>
            <form method="POST" action="{{ route('NuevoPeriodoPresupuestal') }}" aria-label="{{ __('NuevoPeriodoPresupuestal') }}">
                @csrf

                <div class="form-group row">
                    <label for="nombrePeriodo" class="col-sm-4 col-form-label text-md-right">{{ __('Nombre Periodo Presupuestal') }}</label>

                    <div class="col-md-6">
                        <input maxlength="70" id="nombrePeriodo" name="nombrePeriodo" placeholder="Presupuesto 20XX" type="text" class="form-control{{ $errors->has('nombrePeriodo') ? ' is-invalid' : '' }}"  value="{{ old('nombrePeriodo') }}" required autofocus>

                        @if ($errors->has('nombrePeriodo'))
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('nombrePeriodo') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group row">
                    <label for="fechaInicio" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Inicio Solicitudes') }}</label>

                    <div class="col-md-6">
                        <input required type="text" name="fechaInicio" class="form-control datetime-picker flatpickr-input active" placeholder="Selecionne Fecha y hora de inicio para el periodo presupuestal" readonly="readonly">
                        @if ($errors->has('fechaInicio'))
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('fechaInicio') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>
                <div class="form-group row">
                    <label for="fechaTermino" class="col-md-4 col-form-label text-md-right">{{ __('Fecha Termino Solicitudes') }}</label>

                    <div class="col-md-6">
                        <input required type="text" name="fechaTermino" class="form-control datetime-picker flatpickr-input active" placeholder="Selecionne Fecha y hora de termino tentativas para el Cierre del Presupuesto " readonly="readonly">
                        @if ($errors->has('fechaTermino'))
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('fechaTermino') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>

                <div class="form-group row">
                    <label for="AtributosAdicionales" class="col-md-4 col-form-label text-md-right">{{ __('Seleccione los Atributos Adicionales Para el siguiente periodo Presupuestal') }}</label>
                    <div class="TablaAtributosAdicionales">

                    </div>
                </div>
                <div class="form-group row mb-0">
                    <div class="col-md-8 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            {{ __('Crear Periodo') }}
                        </button>
                    </div>
                </div>
            </form>

        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="ModalCrearAtributo" tabindex="-1" role="dialog" aria-labelledby="ModalBorrar"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Crear un Nuevo Atributo Adicional</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="InteriorModal">

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalEnd -->

    <!-- Modal -->
    <div class="modal fade" id="ModalEnviar" tabindex="-1" role="dialog" aria-labelledby="ModalEnviar"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Enviar Presupuesto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ¿Esta seguro que desea Crear un nuevo periodo presupuestal? Esta accion cerrara el anterior periodo presupuestal para inicial uno nuevo
                    con los departamentos y solicitantes actuales.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="modalEnviar-btn-si">Si</button>
                    <button type="button" class="btn btn-primary" id="modalEnviar-btn-no">No</button>

                </div>
            </div>
        </div>
    </div>
    <!-- ModalEnd -->


@endsection
@section('Scripts')
<script>
    $(window).ready(function () {
        refreshTable();
        console.log('Test');
    });
</script>

<script>
    function refreshTable() {
        $('div.TablaAtributosAdicionales').fadeOut();
        $('div.TablaAtributosAdicionales').load('RefrescarTablaAtributosAdicionales', function () {
            $('div.TablaAtributosAdicionales').fadeIn();
        });

    }
</script>
<script>
    function MostrarModal() {
            $('#ModalCrearAtributo').modal('show');
        $('div.InteriorModal').fadeOut();
        $('div.InteriorModal').load('ModalAtributoACrear', function () {
            $('div.InteriorModal').fadeIn();
        });
    }
</script>



@endsection
