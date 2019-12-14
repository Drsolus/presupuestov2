

<form id="formmodal">

    <div class="form-group">
    <input hidden name="idLinea" type="text"
           class="form-control form-control-lg"
           value="{{$Linea->idLineasDeDetalle}}">

           <div class="row">
               <div class="col-md-6">Monto Anterior:</div>
           </div>
        <div class="row">
        <div class="col-md-6">{{$Linea->presupuestoEjecutado}}</div>
        </div>




            <div class="row">
                <div class="col-md-6">Nuevo Monto</div>
            </div>

        <div class="row">
                    <div class="col-md-6">
                        <input maxlength="11" required name="ValorActualizado" id="ValorActualizado" type="number" class="form-control form-control-lg"
                        min="{{$Linea->presupuestoEjecutado}}"  max="{{$Linea->presupuestoAprobado}}" placeholder="Ingrese Nuevo Monto">
                    </div>
        </div>




            </div>


    <div class="Button-Container">
        <div>
            <input style="margin-top: 40px" type="submit" class="btn btn-info" Value="Actualizar">
        </div>
    </div>
        </diV>
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

            url: 'ActualizarEjecucion',

            data: $(this).serialize(),

            success: function (response) {

                console.log(response.result);
                $("#ModalEjecutar .close").click();
                refreshTable();


            }

        });

    });
</script>

