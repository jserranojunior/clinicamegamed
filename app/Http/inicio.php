<?php
namespace App\Http;
use Illuminate\Database\Eloquent\Model;
use DB;


class inicio extends Model
{
    public $estoque;
    
     public function __construct() {
       $estoque = DB::table('stock')->get();
       $this->estoque = $estoque;
        return $this->estoque;
    }
}


