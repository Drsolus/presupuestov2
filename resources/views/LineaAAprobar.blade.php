

<form id="formmodal">

    <div class="form-group">
        <input hidden name="idLinea" type="text"
               class="form-control form-control-lg"
               value="{{$Linea->idLineasDeDetalle}}">

        <div class="row">
            <div class="col-md-6">Monto Solicitado:</div>
        </div>
        <div class="row">
            <div class="col-md-6">{{$Linea->presupuestoSolicitado}}</div>
        </div>




        <div class="row">
            <div class="col-md-6">Monto A Aprobar:</div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <input required name="ValorAprobado" type="number" class="form-control form-control-lg"
                       min="1"  placeholder="Ingrese Monto A Aprobar">
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

            url: 'AprobarLinea',

            data: $(this).serialize(),

            success: function (response) {

                console.log(response.result);
                $("#ModalAprobar .close").click();
                refreshTable();


            }

        });

    });
</script>

