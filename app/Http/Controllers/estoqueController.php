<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http;
use Storage;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
class estoqueController extends Controller {

    public function Teste(){
        
    }
    
    
    public function Index() {
        $model = new Http\estoque();
        $model->exibirTodos();
        $dados = $model->estoque;
        $categorys = $model->category;

        $dados = array('dados' => $dados, 'categorias' => $categorys,'count' => 1);
      
        return view('inicio')->with($dados);
    }

    public function edit($id) {
        $model = new Http\estoque();
        $model->edit($id);
        $dados = $model->estoque;
        
        $categorys = $model->category;
        
        $dados = array('dados' => $dados,'categorias' => $categorys);
        
        return view('editar')->with($dados);
    }
        
    public function update(Request $request) {

       $foto = $_FILES;
       $dados = $_POST;
        
       
       
       $atualizar = new Http\estoque();
       $atualizar->atualizar($dados, $foto);
        
            
       return Redirect::route('stock.index');
        
        
        
    }
        
public function create(){
        
    $model = new Http\estoque();
    $model->category();
    $categorias = $model->category;
 
    $categorias = array('categorias' => $categorias);    
            
        return view('novo')->with($categorias);
        
        
    }
    
    public function store(Request $request){
        
        $dados = $_POST;
         $foto = $_FILES;
         
        $model = new Http\estoque();
        $model->novo($dados, $foto);
        
        return Redirect::route('stock.index');
    }

}
