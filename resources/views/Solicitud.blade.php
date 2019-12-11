@extends('layouts.admin')

@section('content')

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Solicitudes de Presupuesto</h4>
            <h6 class="card-subtitle">Llene el formulario a continuacion para realizar su solicitud de presupuesto</h6>

            <h3 class="card-body__title">Formulario de solicitud presupuestal</h3>
            <p></p>

            <form id="formprincipal">
                <div class="Form-group">
                    <div class="input-group">
                        <input required name="Descripcion" type="text" class="form-control form-control-lg"
                               placeholder="Descripcion" style="margin: 15px;">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">$</span>
                        <input name="PresupuestoSolicitado" type="number" class="form-control form-control-lg"
                               placeholder="Valor Solicitado">
                    </div>
                    @foreach($AtributosARenderizar as $Atributo)
                        <div class="input-group">
                            <input hidden required name="NombreAtributoAdicional[]" type="text"
                                   class="form-control form-control-lg"
                                   value="{{$Atributo->nombreCatalogoAtributoAdicional}}">

                            <input name="ValorAtributoAdicional[]" required type="text"
                                   class="form-control form-control-lg"
                                   placeholder="{{$Atributo->nombreCatalogoAtributoAdicional}}" style="margin: 15px;">
                        </div>
                    @endforeach
                    <div class="input-group">
                        <button id="btn-submit" align="Justify" style="margin-top: 10px" type="submit"
                                class="btn btn-success">Añadir
                        </button>
                    </div>
                </div>
            </form>
            <div>
                <div class="table-container">

                </div>
            </div>
            <div class="test">

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Editar Linea De Detalle</h5>
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
    <div class="modal fade" id="ModalBorrar" tabindex="-1" role="dialog" aria-labelledby="ModalBorrar"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Borrar Linea De Detalle</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ¿Esta seguro que desea eliminar esta linea de detalle?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="modal-btn-si">Si</button>
                    <button type="button" class="btn btn-primary" id="modal-btn-no">No</button>

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
                    ¿Esta seguro que desea Enviar su presupuesto? este no podra ser modificado una vez enviado.
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
    <script type="text/javascript">

        $("#formprincipal").on("submit", function (event) {
            event.preventDefault();
            $.ajaxSetup({

                headers: {

                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

                }

            });
            $.ajax({

                type: 'POST',

                url: 'InsertarLineaDeDetalle',

                data: $(this).serialize(),

                success: function (response) {

                    console.log(response.result);
                    document.getElementById("formprincipal").reset();
                    refreshTable();


                }

            });
        });

    </script>

    <script>
        function refreshTable() {
            $('div.table-container').fadeOut();
            $('div.table-container').load('RefrescarTablaLineasDeDetalle', function () {
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
        function editarvalor(idlinea) {

            $('#exampleModalCenter').modal('show');
            $('div.InteriorModal').fadeOut();
            $('div.InteriorModal').load('ModalLineaDeDetalle/' + idlinea, function () {
                $('div.InteriorModal').fadeIn();
            });

        }


    </script>

    <script>
        function borrarLinea(idLinea) {

            $("#ModalBorrar").modal('show');

            var modalConfirm = function (callback) {

                $("#modal-btn-si").on("click", function () {
                    callback(true);
                    $("#ModalBorrar").modal('hide');
                });

                $("#modal-btn-no").on("click", function () {
                    callback(false);
                    $("#ModalBorrar").modal('hide');
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

                        url: 'BorrarLineaDeDetalle',

                        data: {idLinea: idLinea},

                        success: function (response) {

                            console.log(response.result);
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
    <script>
        function enviarPresupuesto(idpresupuesto) {

            $("#ModalEnviar").modal('show');

            var modalConfirm = function (callback) {

                $("#modalEnviar-btn-si").on("click", function () {
                    callback(true);
                    $("#ModalEnviar").modal('hide');
                });

                $("#modalEnviar-btn-no").on("click", function () {
                    callback(false);
                    $("#ModalEnviar").modal('hide');
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

                        url: 'EnviarPresupuesto',

                        data: {idPresupuesto: idpresupuesto},

                        success: function (response) {

                            console.log(response.result);
                            refreshTable();
                            window.location.href = "{{ route('MisPresupuestos')}}";


                        }

                    });


                    //$("#result").html("CONFIRMADO");
                } else {

                    //$("#result").html("NO CONFIRMADO");
                }
            });
        }
    </script>

@endsection

