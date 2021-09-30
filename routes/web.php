<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

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

    $products = Product::all();
    return view('welcome', compact('products'));
})->name('homepage');
// Route::get('/users/{name}/{age?}', function($name, $age = 1){
//     return route('demo_route', ['id'=>100]);
// });
// Route::get('products', [HomeController::class, 'productList']);
// Route::get('products/add', [HomeController::class, 'addProduct']);
// Route::post('products/add', [HomeController::class, 'saveProduct']);





// Route::get('fake-password/{mk?}', function($mk = '123456'){
//     return Hash::make($mk);
// });
// Route::get('demo-name/{id}', function($id){
//     return $id;
// })->middleware(['auth'])->name('demo_route');


// Route::get('/users/detail/{id}', [HomeController::class, 'detail']);


// Route::get('info', [HomeController::class, 'infoForm']);
// Route::get('save-info', [HomeController::class, 'saveInfo'])->name('save.info');

