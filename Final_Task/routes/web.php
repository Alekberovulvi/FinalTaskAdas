<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\ShopController;
use App\Http\Controllers\Client\ContactController;
use App\Http\Controllers\Client\CartController;
use App\Http\Controllers\Client\LoginController;
use App\Http\Controllers\Client\RegisterController;
use App\Http\Controllers\Client\ResetPasswordController;
use App\Http\Controllers\Client\CheckOutController;
use App\Http\Controllers\Client\WishListController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BookController;
use App\Http\Controllers\Admin\SlideController;
use App\Http\Controllers\Admin\ImgController;
use App\Http\Controllers\Admin\ProductImgController;
use App\Http\Controllers\Admin\BrandsController;


Route::group(['prefix' => '', 'as' => 'client.'], function() {
    Route::get('/', [HomeController::class, 'index'])->name('index');
    Route::get('/shop', [ShopController::class, 'index'])->name('shop');
    Route::get('/shop/{id}', [ShopController::class, 'detail'])->name('shop.detail');
    Route::get('/contact', [ContactController::class, 'index'])->name('contact');
    Route::get('/cart', [CartController::class, 'index'])->name('cart');
    Route::get('/login', [LoginController::class, 'index'])->name('login');
    Route::get('/register', [RegisterController::class, 'index'])->name('register');
    Route::get('/resetpassword', [ResetPasswordController::class, 'index'])->name('resetpassword');
    Route::get('/checkout', [CheckOutController::class, 'index'])->name('checkout');
    Route::get('/wishlist', [WishListController::class, 'index'])->name('wishlist');
});

Route::group(['prefix' => 'admin', 'as' => 'admin.'], function() {
    Route::resource('/dashboard', AdminController::class );
    Route::resource('/books', BookController::class);
    Route::resource('/slide', SlideController::class);
    Route::resource('/images', ImgController::class);
    Route::resource('/products', ProductImgController::class);
    Route::resource('/brands', BrandsController::class);
});