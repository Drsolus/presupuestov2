<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@Index')->name('home');
Route::get('/Solicitud', 'HomeController@Solicitud')->name('Solicitud');
Route::get('/test', 'HomeController@test')->name('test');
Route::get('/AprobarPresupuestos', 'HomeController@AprobarPresupuestos')->name('AprobarPresupuestos');
Route::get('/EjecutarPresupuesto', 'HomeController@EjecutarPresupuesto')->name('EjecutarPresupuesto');
Route::get('/NuevoDepartamento', 'HomeController@NuevoDepartamento')->name('NuevoDepartamento');
Route::get('Departamentos', 'HomeController@Departamentos')->name('Departamentos');
Route::get('Solicitantes', 'HomeController@Solicitantes')->name('Solicitantes');
Route::get('EnrolarSolicitante', 'HomeController@EnrolarSolicitante')->name('EnrolarSolicitante');
Route::Post('CrearSolicitante', 'SolicitanteController@CrearSolicitante')->name('CrearSolicitante');
Route::get('/CrearPeriodoPresupuestal', 'HomeController@CrearPeriodoPresupuestal')->name('CrearPeriodoPresupuestal');
Route::post('TraerLineasDeDetalle', 'SolicitudPresupuestos@LineasDeDetalle');
Route::Post('InsertarLineaDeDetalle', 'SolicitudPresupuestos@InsertarLineaDeDetalle')->name('InsertarLineaDeDetalle');
Route::Post('ActualizarLineaDeDetalle', 'SolicitudPresupuestos@ActualizarLineaDeDetalle')->name('ActualizarLineaDeDetalle');
Route::get('RefrescarTablaLineasDeDetalle', 'SolicitudPresupuestos@RefrescarTabla')->name('RefrescarTablaLineasDeDetalle');
Route::get('RefrescarTablaPresupuestos', 'PresupuestoController@RefrescarTabla')->name('RefrescarTablaPresupuestos');
Route::Post('ReActivarPresupuesto', 'PresupuestoController@ReActivarPresupuesto')->name('ReActivarPresupuesto');
Route::get('/presupuesto', 'PresupuestoController@index')->name('presupuesto');
Route::get('/MisPresupuestos', 'HomeController@MisPresupuestos')->name('MisPresupuestos');
Route::get('detalle/', 'HomeController@detalle')->name('mostrarDetalle');
Route::get('detallePeriodoPresupuestal/', 'PeriodoPresupuestalController@verdetalle')->name('detallePeriodoPresupuestal');
Route::Post('EnviarPresupuesto', 'SolicitudPresupuestos@EnviarPresupuesto')->name('EnviarPresupuesto');
Route::get('ModalLineaDeDetalle/{id}','SolicitudPresupuestos@ModalLinea');
Route::Post('BorrarLineaDeDetalle', 'SolicitudPresupuestos@BorrarLienaDeDetalle')->name('BorrarLineaDeDetalle');
Route::get('RefrescarTablaAEjecutar', 'EjecutorController@RefrescarTabla')->name('RefrescarTablaAEjecutar');
Route::get('RefrescarTablaAtributosAdicionales', 'PeriodoPresupuestalController@RefrescarTabla')->name('RefrescarTablaAtributosAdicionales');
Route::get('ModalAtributoACrear', 'PeriodoPresupuestalController@ModalAtributoACrear')->name('ModalAtributoACrear');
Route::Post('CrearAtributoAdicional', 'PeriodoPresupuestalController@CrearNuevoAtributoAdicional')->name('CrearAtributoAdicional');
Route::Post('NuevoPeriodoPresupuestal', 'PeriodoPresupuestalController@CrearNuevoPeriodoPresupuestal')->name('NuevoPeriodoPresupuestal');
Route::get('PeriodosPresupuestales', 'HomeController@PeriodosPresupuestales')->name('PeriodosPresupuestales');
Route::get('ModalEjecucion/{id}','EjecutorController@TraerLIneaAEjecuccion');
Route::Post('ActualizarEjecucion', 'EjecutorController@ActualizarEjecucion')->name('ActualizarEjecucion');
Route::get('TraerPresupuestoAAprobar/{id}/','AprobarPresupuestosController@TraerPresupuestoAAprobar');
Route::get('ModalAprobar/{id}','AprobarPresupuestosController@ModalAprobarLineaDeDetalle');
Route::Post('AprobarLinea','AprobarPresupuestosController@AprobarLinea');
Route::Post('RechazarLinea', 'AprobarPresupuestosController@RechazarLinea')->name('RechazarLinea');
Route::Post('CrearDepartamento', 'DepartamentoController@CrearDepartamento')->name('CrearDepartamento');

