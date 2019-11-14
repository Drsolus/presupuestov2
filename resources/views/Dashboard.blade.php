@extends('layouts.admin')

@section('content')

<h1>Dashboard</h1>


<div>
<h2>
<label>Bienvenido {{ Auth::user()->name}}</label>
</h2>
</div>
@endsection
