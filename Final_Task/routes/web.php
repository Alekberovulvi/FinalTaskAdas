<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Client\HomeController;
use App\Http\Controllers\Client\ShopController;
use App\Http\Controllers\Client\ContactController;
use App\Http\Controllers\Client\CartController;
use App\Http\Controllers\Client\AuthController;
use App\Http\Controllers\Client\CheckOutController;
use App\Http\Controllers\Client\WishListController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BookController;
use App\Http\Controllers\Admin\SlideController;
use App\Http\Controllers\Admin\ImgController;
use App\Http\Controllers\Admin\ProductImgController;
use App\Http\Controllers\Admin\BrandsController;
use App\Http\Controllers\Admin\ShopAdminController;
use App\Http\Controllers\Admin\AdminAuthController;


Route::group(['prefix' => '', 'as' => 'client.'], function () {
    Route::get('/', [HomeController::class, 'index'])->name('index');
    Route::get('/shop/{slug?}', [ShopController::class, 'index'])->name('shop');
    Route::get('/product_detail/{id}', [ShopController::class, 'detail'])->name('shop.detail');
    Route::get('/contact', [ContactController::class, 'index'])->name('contact');
    Route::post('/contact', [ContactController::class, 'send'])->name('contact.send');
    Route::get('/cart', [CartController::class, 'index'])->name('cart');
    Route::post('/cart/checkout', [CartController::class, 'index'])->name('cart.checkout');
    Route::get('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/loginPost', [AuthController::class, 'loginPost'])->name('loginPost');
    Route::get('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/registerPost', [AuthController::class, 'registerPost'])->name('registerPost');
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::get('/resetpassword', [AuthController::class, 'resetpassword'])->name('resetpassword');
    Route::post('/resetpassword', [AuthController::class, 'resetPasswordPost'])->name('passwordreset');
    Route::get('/checkout', [CheckOutController::class, 'index'])->name('checkout');
    Route::get('/wishlist', [WishListController::class, 'index'])->name('wishlist');
});



Route::group(
    ['prefix' => 'admin', 'as' => 'authadmin.'],
    function () {
        Route::get('/login', [AdminAuthController::class, 'showLoginForm'])->name('login');
        Route::post('/loginPost', [AdminAuthController::class, 'login'])->name('loginPost');
        Route::post('/logout', [AdminAuthController::class, 'logout']);
    }
);


Route::group(
    ['prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'adminauth'],
    function () {
        Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');
        Route::resource('/dashboard', AdminController::class);
        Route::resource('/books', BookController::class);
        Route::resource('/slide', SlideController::class);
        Route::resource('/images', ImgController::class);
        Route::resource('/products', ProductImgController::class);
        Route::resource('/brands', BrandsController::class);
        Route::resource('/shop', ShopAdminController::class);
    }
);




