@extends('layouts.admin')

@section('content')

    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Ejecuccion Presupuestal</h4>
            <h6 class="card-subtitle"></h6>

            <h3 class="card-body__title">Interfaz de Ejecuccion Presupuestal</h3>
            <p></p>
            <div>
                <div class="table-container">

                </div>
            </div>
            <div class="test">

            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="ModalEjecutar" tabindex="-1" role="dialog"
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
@endsection
@section('Scripts')

    <script>
        function refreshTable() {
            $('div.table-container').fadeOut();
            $('div.table-container').load('RefrescarTablaAEjecutar', function () {
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
        function MostrarModal(idlinea) {
            $('#ModalEjecutar').modal('show');
            $('div.InteriorModal').fadeOut();
            $('div.InteriorModal').load('ModalEjecucion/'+idlinea+"", function () {
                $('div.InteriorModal').fadeIn();
            });
        }
    </script>


@endsection

