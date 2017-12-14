
@extends('layouts.header')
@section('content')

<div class="col-md-12" >
    <div class="box"> 
        <div class="box-body">
            <table id="tableStock" class='table-bordered table-stock table table-condensed table-hover table-striped table-responsive'>
                
                <thead>
               <th>ETIQUETAS</th>
                 <th>PRODUTOS</th>
                <th>CATEGORIAS</th>
                <th>DESCRIÇÃO</th>
                <th>DATA DE CADASTRO</th>
                <th>LOCAL</th>
                <th>STATUS</th>
                <th>NOTA FISCAL</th>
                </thead>
                
                <tbody>
                @foreach($dados as $indexKey  => $dado)
               
                    <tr onclick="document.location='estoque/{{$dado->id}}/editar';" > 
                        
                        <td>
                            {{$dado->tag}}
                        </td>
                        
                        <td>
                            {{$dado->product}}
                        </td>
                        

                        <td>
                            {{$dado->category}}
                        </td>
                       <td>
                            {{$dado->description}}
                        </td>
                         <td class="text-center">
                            {{$dado->date}}
                        </td>
                         <td>
                            {{$dado->local}}
                        </td>
                        <td>
                            {{$dado->status}}
                        </td>
                        <td>
                             {{$dado->invoice}}
                        </td>
                        
                       
                    </tr>
 @endforeach
                </tbody>
            </table>
        </div>
    </div>


    @endsection

 