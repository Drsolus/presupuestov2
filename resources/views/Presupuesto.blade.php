@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Presupuestos</h1>
            <div class="row">
            <div class="table-container">

            </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="ModalPresupuesto" tabindex="-1" role="dialog" aria-labelledby="ModalPresupuesto"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Reactivar Presupuesto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ¿Esta seguro que desea Reactivar este presupuesto?
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
            $('div.table-container').fadeOut();
            $('div.table-container').load('RefrescarTablaPresupuestos', function () {
                $('div.table-container').fadeIn();
            });

        }
    </script>

    <script>
        $(window).ready(function () {
            refreshTable();

        });
    </script>
    <script>
        function Reactivar(idPresupuesto) {
                console.log(idPresupuesto);
            $("#ModalPresupuesto").modal('show');

            var modalConfirm = function (callback) {

                $("#modal-btn-si").on("click", function () {
                    callback(true);
                    $("#ModalPresupuesto").modal('hide');
                });

                $("#modal-btn-no").on("click", function () {
                    callback(false);
                    $("#ModalPresupuesto").modal('hide');
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

                        url: 'ReActivarPresupuesto',

                        data: {idPresupuesto: idPresupuesto},

                        success: function (response) {

                            console.log(response);
                            refreshTable();


                        }

                    });


                    //$("#result").html("CONFIRMADO");
                } else {
                    console.log('Wololo')
                    //$("#result").html("NO CONFIRMADO");
                }
            });
        }
    </script>

@endsection
