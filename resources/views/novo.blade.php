
@extends('layouts.header')
@section('content')


 

<div class="col-md-12" >
    <div class="box"> 
        <div class="box-body">

                                <h4 class="modal-title text-center" id="myLargeModalLabel">Produto do estoque </h4>
                          
                                <div class="row">
                                    <form name="foo" method="post" action="{{URL::route('stock.store')}}" enctype="multipart/form-data">
                                        <div class="col-md-4">
                                            <img class="img-responsive" src="../storage/estoque/estoque.jpg">
                                            <div class="form-group">
                                               
                                                <input type="file" name="photo"  class="btn btn-primary file">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">

                                                 <label for="product" >Produto</label>
                                                <input type="text" name="product" placeholder="Produto"  class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="tag">Etiqueta</label>
                                                <input type="text" name="tag" placeholder="Etiqueta"  class="form-control">
                                            </div>
                                            
                                             <div class="form-group">
                                                <label for="category">Categoria</label> 
                                                <div class="row">
                                                <div class="col-md-12 col-xs-12">
                                                <select name="category" id="category" value="" placeholder="Categoria" class="form-control">
                                                    
                                                    @foreach($categorias as $category)
                                                    <option value="{{$category->id}}"> {{$category->category}}</option>
                                                    @endforeach
                                                   
                                                  </select>
                                               </div>
                                                    
                                                   
                                            </div>
                                             </div>
                                            
                                              <div class="form-group">
                                                <label for="descricao">Descrição</label>
                                                <input type="text" name="description" placeholder="Descricao"  class="form-control">
                                            </div>
                                            
                                            
                                            
                                              <div class="form-group">
                                                <label for="observacao">Observação</label>
                                                <input type="text" name="note" placeholder="Observação"  class="form-control">
                                            </div>
                                            
                                            
                                             <div class="form-group">
                                                 <div class="row">
                                            <div class="col-md-6">
                                                <label for="local">Local</label>
                                                <input type="text" name="local" placeholder="Local" class="form-control">
                                            </div>
                                                     
                                                   <div class="col-md-6">   
                                                       <label for="local">Nota Fiscal</label>
                                                <input type="text" name="invoice" placeholder="Nota Fiscal" class="form-control">
                                             
                                                          </div>
                                                         </div>
                                                  </div>
                                            
                                             <div class="form-group">
                                            <div class="row">
                                            <div class="col-md-6">
                                               
                                                    <label for="status">Status</label> 
                                                    <select name="status" class="form-control">
                                                        
                                                        <option value="Ativo">Ativo</option>
                                                        <option value="Inativo">Inativo</option>
                                                    </select>
                                                </div>
                                          
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="dtCadastro">Data de cadastro</label> 
                                                    <input class="form-control" name="date" type="date"  >
                                            </div>
                                            </div>
                                             </div>
                                                  </div>
                                            <div class="form-group">

                                                <input type="submit" placeholder="Etiqueta" value="SALVAR" class="btn-primary btn">
                                            </div>
                                        </div>
                                       
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                    </form>
                                </div>
                            </div>
 </div>

 
  @endsection
