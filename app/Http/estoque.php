<?php
namespace App\Http;
use Illuminate\Database\Eloquent\Model;
use DB;


class estoque extends Model
{
    public $estoque;
    public $category;
    
     public function exibirTodos() {
       $estoque = DB::table('stock')
                ->select('stock.id',
                       'stock.tag',
                       'stock.product',
                       'stock.image',
                       'stock.description',
                       'stock.note',
                       'stock.status',
                        'stock.local',
                       'stock.date',
                        'stock.invoice',
                       'category_stock.category')
               ->leftjoin('category_stock', 'category_stock.id', '=', 'stock.category')
               ->orderby('tag','asc')
               ->get();
      
       foreach($estoque as $stock){
           $date = $stock->date;
           $date = date('d-m-Y', strtotime($date));
           $stock->date = $date;
       }
       
       $category = DB::table('category_stock')->get();
       
       
       $this->estoque = $estoque;
       $this->category = $category;
       

       
    }
    
    public function category(){
        $category = DB::table('category_stock')->get();
        $this->category = $category;
    }
    
    
    
     public function edit($id) {
        
       $estoque = DB::table('stock')
               ->select('stock.id',
                       'stock.tag',
                       'stock.product',
                       'stock.image',
                       'stock.description',
                       'stock.note',
                       'stock.status',
                       'stock.date',
                       'stock.local',
                        'stock.invoice',                       
                       'category_stock.category',
                       'stock.category AS cateId'
                       )
               ->leftjoin('category_stock', 'category_stock.id', '=', 'stock.category')
               ->where('stock.id',$id)->
             get();
        
      foreach($estoque as $stock){
           $date = $stock->date;
           $date = date('d-m-Y', strtotime($date));
           $stock->date = $date;
       }
       
       
       $category = DB::table('category_stock')->get();
       
       $this->estoque = $estoque;
       $this->category = $category;
        return $this->estoque;
    }
    
    
    public function novo($dados, $foto){
        
        
            
            $product = $dados['product'];
            
            if($tag = $dados['tag'] > ""){
            $tag = $dados['tag'];
            }
            else{
                $tag = "1";
            }
            
            $invoice = $dados['invoice'];
            $local = $dados['local'];
            $status = $dados['status'];
            $category = $dados['category'];
            $note = $dados['note'];
            $linkImg = '';
            $description = $dados['description'];
            $date = $dados['date'];
            
            
            
            
            $error = $foto['photo']['error'];
        if($error > ""){
            
          
        }else{
        
         $arqName = $foto['photo']['name'];
         $pasta = './storage/estoque/';
         $arqTemp = $foto['photo']['tmp_name'];
         $imvfoto = uniqid('img_').'.'.pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);
         
         $linkImg = $imvfoto;
         
         move_uploaded_file($arqTemp, $pasta . $imvfoto);
        }          
    
        
            
            
            try{
            DB::table('stock')
            ->insert(['product' => $product,
                'tag' => $tag,
                'status' => $status,
                'category' => $category,
                'image' => $linkImg,
                'local' => $local,
                'note' => $note,
                'invoice' => $invoice,
                'description' => $description,
                'date' => $date,
                 ]);
            }catch(Exception $e){
               echo $e;
            }
    }
    
    public function atualizar($dados, $foto){
        
          
            
            $id = $dados['id'];
            $product = $dados['product'];
            $tag = $dados['tag'];
            $status = $dados['status'];
            $category = $dados['category'];
            $note = $dados['note'];
            $linkImg = $dados['image'];
            $local = $dados['local'];
             $invoice = $dados['invoice'];
            $description = $dados['description'];
            $date = $dados['date'];
        
          
            
         $error = $foto['photo']['error'];
        if($error > ""){
            
          
        }else{
        
         $arqName = $foto['photo']['name'];
         $pasta = './storage/estoque/';
         $arqTemp = $foto['photo']['tmp_name'];
         $imvfoto = uniqid('img_').'.'.pathinfo($_FILES['photo']['name'], PATHINFO_EXTENSION);
         
         $linkImg = $imvfoto;
         
         move_uploaded_file($arqTemp, $pasta . $imvfoto);
        }          
    

        
        
      DB::table('stock')
            ->where('id', $id)
            ->update(['product' => $product,
                'tag' => $tag,
                'status' => $status,
                'category' => $category,
                'image' => $linkImg,
                'local' => $local,
                'note' => $note,
                  'invoice' => $invoice,
                'description' => $description,
                'date' => $date,
                
                    
                    ]);
       
   
      
        
        
        
          }
    
}


