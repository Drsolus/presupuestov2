<table class="table table-hover table-condensed table-bondered">
                        <thead>
                        <tr>
                            <th>ID Presupuesto</th>
                            <th>Nombre Solicitante</th>
                            <th>Departamento</th>
                            <th>Estado Presupuesto</th>
                            @if(Auth::user()->role == 'Finanzas')
                            <th>ReAbrir Solicitud</th>
                            @endif
                            <th>Estado Periodo Presupuestal</th>
                            <th>Opciones</th>
                        </tr>
                        </thead>
@foreach($presupuestos as $presupuesto)
    <tbody>
    <tr>
        <td>{{ $presupuesto->idPresupuesto }}</td>
        <td>{{ $presupuesto->nombreSolicitantePresupuesto }}</td>
        <td>{{ $presupuesto->Departamento->nombreDepartamento }}</td>
        <td>{{ $Estado= $presupuesto->CatalogoEstadoPresupuesto->nombreEstadoPresupuesto}}</td>
        @if(Auth::user()->role == 'Finanzas' && ($Estado=='Enviado' || $Estado=='Rechazado' || $Estado== 'Aprobado en su Totalidad' || $Estado== 'Aprobado con Observaciones'||$Estado== 'En Ejecucion') )
            <td><button onclick="Reactivar({{$presupuesto->idPresupuesto}})" class="btn btn-dark btn--icon-text"><i class="zmdi zmdi-arrow-back"></i>ReActivar</button> </td>
        @elseif(Auth::user()->role == 'Finanzas')
            <td></td>
            @else

        @endif
        <td>{{ $presupuesto->PeriodoPresupuestal->CatalogoEstadoPeriodoPresupuestal->nombreEstadoPeriodoPresupuestal }}</td>

        <td><a href="{{ route('mostrarDetalle',['id'=>$presupuesto->idPresupuesto]) }}">Ver Detalle</a>
        </td>
    </tr>
    </tbody>
    @endforeach
    </table>
