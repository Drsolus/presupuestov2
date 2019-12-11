@extends('layouts.admin')
@section('content')
<div class="card">
    <div class="card-body">
        <h4 class="card-title">Aprobracion Presupuestal</h4>
        <h6 class="card-subtitle"></h6>

        <h3 class="card-body__title">Interfaz de Ejecuccion Presupuestal</h3>




        <div style="margin: 40px" class="row">
            <h5>Seleccione un departamento</h5>

        </div>
            <div class="row">
                <select id="SelectDepartamentos" class="form-control">
                    <option style="margin: 40px;
    background: rgb(17,57,54);
    color: #FFFFFF;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);"value="">Seleccione un Departamentos</option>
                    @foreach($Departamentos as $Departamento )
                        <option style="margin: 40px;
    background: rgb(17,57,54);
    color: #FFFFFF;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);" value="{{$Departamento->idDepartamento}}">{{$Departamento->nombreDepartamento}}</option>
                    @endforeach
                </select>

            </div>
        <div>
            <input readonly id="inputaux" hidden type="text" value="">
        </div>
        <div class="table-container">

            </div>
        </div>
        <div class="test">

        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="ModalAprobar" tabindex="-1" role="dialog"
     aria-labelledby="ModalAprobar" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Aprobar Linea De Detalle</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="InteriorModal">

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>

            </div>
        </div>
    </div>
</div>
<!-- ModalEnd -->

<!-- Modal -->
<div class="modal fade" id="ModalRechazar" tabindex="-1" role="dialog" aria-labelledby="ModalRechazar"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Rechazar Linea De Detalle</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ¿Esta seguro que desea Rechazar esta linea de detalle?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="modal-btn-si">Si</button>
                <button type="button" class="btn btn-primary" id="modal-btn-no">No</button>

            </div>
        </div>
    </div>
</div>
<!-- ModalEnd -->

@endsection
@section('Scripts')

    <script>
        function refreshTable() {
            var idDepartamento = $("#inputaux").val();
            $('div.table-container').fadeOut();
            $('div.table-container').load('TraerPresupuestoAAprobar/'+idDepartamento+'/', function () {
                $('div.table-container').fadeIn();
            });

        }
    </script>
<script>
    $('#SelectDepartamentos').change(function(){

        $("#inputaux").val($(this).val());
        refreshTable();

    })


</script>

    <script>
        function rechazarLinea(idLinea) {

            $("#ModalRechazar").modal('show');

            var modalConfirm = function (callback) {

                $("#modal-btn-si").on("click", function () {
                    callback(true);
                    $("#ModalRechazar").modal('hide');
                });

                $("#modal-btn-no").on("click", function () {
                    callback(false);
                    $("#ModalRechazar").modal('hide');
                });
            };

            modalConfirm(function (confirm) {
                if (confirm) {

                    $.ajaxSetup({

                        headers: {

                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

                        }

                    });
                    $.ajax({

                        type: 'POST',

                        url: 'RechazarLinea',

                        data: {idLinea: idLinea},

                        success: function (response) {


                            refreshTable();


                        }

                    });


                    //$("#result").html("CONFIRMADO");
                } else {

                    //$("#result").html("NO CONFIRMADO");
                }
            });
        }
    </script>
    <script>
        function aprobarLinea(idlinea) {

            $('#ModalAprobar').modal('show');
            $('div.InteriorModal').fadeOut();
            $('div.InteriorModal').load('ModalAprobar/' + idlinea, function () {
                $('div.InteriorModal').fadeIn();
            });

        }


    </script>
@endsection


