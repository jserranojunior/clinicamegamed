<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http;
use Storage;
use App\Http\Controllers\Controller;


class estoqueController extends Controller {
    
    public function Index() {
        $model = new Http\estoque();
        $model->exibirTodos();
        $dados = $model->estoque;
        $categorys = $model->category;

        $dados = array('dados' => $dados, 'categorias' => $categorys);

        return view('inicio')->with($dados);
    }

//    public function Update($id) {
//        $model = new Http\estoque();
//        $model->atualizar($id);
//        $dados = $model->estoque;
//        $dados = array('dados' => $dados);
//        return view('editar')->with($dados);
//    }
//
//    public function Atualizar(Request $request) {
//
//        $photo = $_FILES['photo'];
//        $product = $_POST['product'];
//        $id = $_POST['id'];
//        
//        
//
//        $dados = array(
//            $product,
//            $id
//           
//        );
//        
//        $error = $_FILES['photo']['error'];
//        
//       
//        
//        if($error > ""){
//            echo "Está vazio";
//        }else{
//        
//         $arqName = $_FILES['photo']['name'];
//         $pasta = '../storage/estoque/';
//         $arqTemp = $_FILES['photo']['tmp_name'];
//         $imvfoto = uniqid('img_').'.'.pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);
//         
//         $linkImg = $pasta.$imvfoto;
//         
////         move_uploaded_file($arqTemp, $pasta . $imvfoto);
//        
//
//        
//        }
//    }

}
