<div align="center" class="Button-Container">
    <div>
        <input style="margin-top: 40px" type="Button" class="btn btn-info" Value="Agregar Atributo Adicional" onclick="MostrarModal()">
    </div>
</div>
@if($Atributos->isEmpty())
 @else
    <div class="table-wrapper" style="position:relative">
        <div class="table-scroll" style="
  overflow:auto;
  margin-top:20px;">
    <div class="table-responsive">
    <table class="table table-bordered mb-0" style="margin: 30px;">
        <thead>
        <tr>
            <th></th>
            <th>Nombre Atributo</th>
            <th>Fecha Creacion</th>
        </tr>
        </thead>
        <tbody>
        @foreach($Atributos as $Atributo)
            <tr>
                <th> <input type="Checkbox" name="atributoAdicional[]" value="{{$Atributo->idCatalogoAtributoAdicional}}" ></th>
                <td> {{$Atributo->nombreCatalogoAtributoAdicional}}</td>
                <td>{{$Atributo->fechaCreacionAtributoAdicional}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
    </div>
    </div>
@endif




