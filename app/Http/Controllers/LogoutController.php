<?php
namespace App\Http\Controllers;
use App\Http\Controllers;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class LogoutController{
    
    public function sair() {

    Auth::logout();
    return Redirect::route('stock.index');

}
    
}

