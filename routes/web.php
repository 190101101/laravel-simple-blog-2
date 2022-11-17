<?php

Route::namespace('main')->group(function(){
    Route::get('/', 'BlogController@index');
    Route::get('/blog/{category}/{slug}', 'BlogController@blog');
    
    Route::get('/category', 'CategoryController@index');
    Route::get('/category/{slug}', 'CategoryController@category');

    Route::get('/page/{slug}', 'PageController@page');
    
    Route::get('/contact', 'ContactController@index');
    Route::post('/contact', 'ContactController@send');

});


Route::namespace('admin')->group(function(){
    Route::middleware('authless')->group(function(){
        Route::prefix('admin/auth')->group(function(){
            Route::get('/', 'AuthController@index');
            Route::post('/', 'AuthController@auth');
        });
    });
        
    Route::middleware('admin')->group(function(){
        Route::prefix('admin/panel')->group(function(){
            Route::get('/', 'PanelController@index');
        });
        
        Route::prefix('admin')->group(function(){
            Route::resource('page', 'PageController');
            Route::get('/page/status/{id}', 'PageController@status');
        });

        Route::prefix('admin')->group(function(){
            Route::resource('category', 'CategoryController');
            Route::get('/category/status/{id}', 'CategoryController@status');
        });

        Route::prefix('admin')->group(function(){
            Route::resource('setting', 'SettingController');
        });

        Route::prefix('admin')->group(function(){
            Route::resource('blog', 'BlogController');
            Route::get('/blog/status/{id}', 'BlogController@status');
        });

        Route::prefix('admin')->group(function(){
            Route::resource('contact', 'ContactController');
        });

        Route::get('/logout', 'AuthController@logout');
    });
});
