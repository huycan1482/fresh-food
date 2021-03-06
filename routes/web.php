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

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'ShopController@index')->name('shop.home');

Route::get('chi-tiet-san-pham/{slug}', 'ShopController@productDetail')->name('shop.productDetail');

Route::get('san-pham/{slug}', 'ShopController@listProducts')->name('shop.listProducts');

Route::get('tim-kiem', 'ShopController@searchProducts')->name('shop.searchProducts');

Route::group(['prefix'  => 'admin',  'as' => 'admin.'], function () {
    Route::get('/', 'AdminController@index')->name('dashboard');
    Route::resource('category', 'CategoryController');
    Route::resource('vendor', 'VendorController');
    Route::resource('product', 'ProductController');
    Route::resource('productImage', 'ProductImageController');
    Route::resource('article', 'ArticleController');
    Route::resource('banner', 'BannerController');
});