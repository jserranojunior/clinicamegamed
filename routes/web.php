<?php

Route::get('/', 'estoqueController@Index')->middleware('auth');

Route::group(['as' => 'stock.','prefix' => 'estoque', 'middleware' => 'auth'],function(){
    Route::get('/',['as'=>'index','uses' => 'estoqueController@Index']);
    Route::get('criar',['as'=>'create', 'uses'=>'estoqueController@create']);
    Route::post('salvar', ['as'=>'store','uses'=>'estoqueController@store']);
    Route::get('{id}/editar',['as' => 'edit','uses' => 'estoqueController@edit']);
    Route::any('atualizar',['as' => 'update', 'uses' => 'estoqueController@update']);
    Route::get('{id}/remover', ['as' => 'destroy', 'uses' => 'estoqueController@destroy']);
});

Auth::routes();

Route::get('/sair','LogoutController@sair');

Route::get('/home', 'estoqueController@Index');
