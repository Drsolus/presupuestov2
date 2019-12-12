<form id="FormCrearAtributo">
    <div  class="form-group row">
        <label for="email" class="col-sm-4 col-form-label text-md-right">{{ __('Nombre Atributo Adicional') }}</label>

        <div class="col-md-6">
            <input id="NuevoAtributo" type="text" class="form-control{{ $errors->has('NuevoAtributo') ? ' is-invalid' : '' }}" name="NuevoAtributo" value="{{ old('NuevoAtributo') }}" required autofocus>

            @if ($errors->has('NuevoAtributo'))
                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('NuevoAtributo') }}</strong>
                                    </span>
            @endif
        </div>
    </div>
    <div class="input-group">
        <button  id="btn-submit" align="Justify" style="margin-top: 10px" type=submit
                class="btn btn-success">Crear Nuevo Atributo
        </button>
    </div>
</form>

<script type="text/javascript">

        $("#FormCrearAtributo").on("submit", function (event) {
            event.preventDefault();
            $.ajaxSetup({

                headers: {

                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

                }

            });
            $.ajax({

                type: 'POST',

                url: 'CrearAtributoAdicional',

                data: $(this).serialize(),

                success: function (response) {
                    console.log(response);

                    document.getElementById("FormCrearAtributo").reset();
                    $("#ModalCrearAtributo .close").click();
                    refreshTable();


                }

            });
        });

</script>
