<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PersonnageController;
use App\Http\Controllers\AllegeanceController;

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



Route::get('/login', function () {
    return view('auth.login');})->name('login');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/', function () {
        return view('dashboard');})->name('dashboard');
});
Route::get('/register', function () {
    return view('auth.register');})->name('register');


Route::resource('personnages', PersonnageController::class);
Route::controller(PersonnageController::class)->group(function () {
    Route::get('/index', 'index')->name('index');
    Route::get('/personnage/create', 'create')->name('create');
    Route::get('/personnage/{id}', 'show')->name('show');
    Route::get('/personnage/{id}/edit', 'edit')->name('edit');


    Route::post('/personnage', 'store');
    Route::patch('/personnage/{id}', 'update');
    Route::delete('/personnage/{id}', 'destroy');

    Route::delete('personnages/force/{personnage}', 'forceDestroy')->name('personnages.force.destroy');
    Route::put('personnages/restore/{personnage}', 'restore')->name('personnages.restore');
    Route::get('allegeance/{slug}/personnages', 'index')->name('personnages.allegeance');

});

Route::resource('allegeances', AllegeanceController::class);
Route::controller(AllegeanceController::class)->group(function () {
    Route::get('/indexCat', 'indexCat')->name('indexCat');
    Route::get('/allegeance/{id}', 'showCat')->name('showCat');;
    Route::get('/allegeance/{id}/editCat', 'editCat')->name('editCat');
    Route::get('/allegeanceCat/createCat', 'createCat')->name('createCat');
    Route::patch('/allegeance/{id}', 'updateCat')->name('allegeance.updateCat');
    Route::post('/allegeance', 'storeCat')->name('storeCat');
    Route::delete('/allegeance/{id}', 'destroyCat')->name('destroyCat');


});




