<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http;

class inicioController extends Controller
{
    public function Index(){
        
        $model = new Http\inicio();
        $dados = $model->estoque;
        
        $dados = array('dados' => $dados);
        
        
        
       return view('inicio')->with($dados);
        
        return("Funcionando");
    }
}
