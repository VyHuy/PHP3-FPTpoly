<?php

use App\Http\Controllers\admin\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Auth;

Route::get('dashboard', function(){
    return "Admin Dashboard";
});
Route::get('dang-nhap', [LoginController::class, 'loginForm'])->name('login');
Route::post('dang-nhap', [LoginController::class, 'postLogin']);
Route::get('dang-xuat', function(){
    Auth::logout();
    return redirect(route('product.index'));
})->name('logout');
Route::prefix('san-pham')->group(function(){
    Route::get('/', [ProductController::class, 'index'])->name('product.index');
    Route::get('/xoa/{id}', [ProductController::class, 'remove'])->name('product.remove');
    Route::get('/tao-moi', [ProductController::class, 'addForm'])->name('product.add')->middleware('auth');
    Route::post('/tao-moi', [ProductController::class, 'saveAdd']);
    Route::get('/cap-nhat/{id}', [ProductController::class, 'editForm'])->name('product.edit');
    Route::post('/cap-nhat/{id}', [ProductController::class, 'saveEdit'])->middleware('log_edit_product');


});
Route::prefix('danh-muc')->group(function(){
    Route::get('/', [CategoryController::class, 'index'])->name('category.index');
    Route::get('/danh-muc/xoa/{id}', [CategoryController::class, 'remove'])->name('category.remove');
    Route::get('/danh-muc/tao-moi', [CategoryController::class, 'addForm'])->name('category.add');
    Route::post('/danh-muc/tao-moi', [CategoryController::class, 'saveAdd']);
    Route::get('/danh-muc/cap-nhat/{id}', [CategoryController::class, 'editForm'])->name('category.edit');
    Route::post('/danh-muc/cap-nhat/{id}', [CategoryController::class, 'saveEdit']);
});

Route::view('demo', 'admin.layouts.main');
?>