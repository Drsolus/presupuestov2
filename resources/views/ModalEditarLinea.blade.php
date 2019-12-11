<form id="formmodal">

    <div class="Form-group">
        <div>
            Descripcion:
        </div>

        <div class="input-group">
            <input hidden name="idLineaDeDetalle" type="text"
                   class="form-control form-control-lg"
                   value="{{$LineaDeDetalle->idLineasDeDetalle}}">

            <input required name="Descripcion" type="text" class="form-control form-control-lg"
                   placeholder="Descripcion" value="{{$LineaDeDetalle->descripcionLineaDeDetalle}}" style="margin: 15px;>">
        </div>
        <div>
            PresupuestoSolicitado:
        </div>
        <div style="margin-bottom: 10px" class="input-group">


            <span class="input-group-addon">$</span>
            <input name="PresupuestoSolicitado"  type="number" class="form-control form-control-lg"
                   placeholder="Valor Solicitado" value="{{$LineaDeDetalle->presupuestoSolicitado}}">
        </div>
        @foreach($AtributosAdicionales as $Atributo)
            <div>
                {{$Atributo->nombreAtributoAdicional}}:
            </div>

            <div class="input-group">
                <input hidden name="idAtributoAdicional[]" type="text"
                       class="form-control form-control-lg"
                       value="{{$Atributo->idAtributoAdicional}}">


                <input name="ValorAtributoAdicional[]" type="text"
                       class="form-control form-control-lg"
                       value="{{$Atributo->valorAtributoAdicional}}" style="margin: 15px;">
            </div>
        @endforeach
        <div class="input-group">
            <button id="btn-submit" align="Justify" style="margin-top: 10px" type="submit"
                    class="btn btn-success">Editar
            </button>
        </div>
    </div>
</form>

    <script type="text/javascript">

        $("#formmodal").on("submit", function (event) {
            event.preventDefault();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({

                type: 'POST',

                url: 'ActualizarLineaDeDetalle',

                data: $(this).serialize(),

                success: function (response) {

                    console.log(response.result);
                    $("#exampleModalCenter .close").click();
                     refreshTable();


                }

            });

        });
</script>
