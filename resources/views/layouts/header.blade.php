<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>MEGAMED</title>

        <!-- Fonts -->
       <!-- Latest compiled and minified CSS -->


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
       
 
    <link rel="stylesheet" href="{{URL::asset('/css/bootstrap.css') }}">
     <link rel="stylesheet" href="{{URL::asset('/css/AdminLTE.css') }}">
  <link rel="stylesheet" href="{{URL::asset('/css/_all-skins.min.css') }}">
 
  <link rel="stylesheet" href="{{URL::asset('/css/style.css') }}">



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="{{URL::asset('/js/bootstrap.js') }}"></script>
        <script src="{{URL::asset('/js/app.js') }}"></script>
            <script src="{{URL::asset('/js/demo.js') }}"></script>
  <script src="{{URL::asset('/js/action.js') }}"></script>
      <script src="{{URL::asset('/js/jquery.dataTables.min.js') }}"></script>
      <link rel="stylesheet" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">

    </head>
    
  <body class="hold-transition skin-blue sidebar-mini">
        
       <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <img class="img-responsive logomegamed" style="width: 74px;margin: 0 auto;" src="{{URL::asset('assets/img/logo-megamed.png') }}"/>
    
    </a> 

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">0</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 0 mensagens</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                 
              <li class="footer"><a href="#">Ver todas as mensagens</a></li>
            </ul>
          </li>
          </ul>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">0</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 0 notificações</li>
              
              <li class="footer"><a href="#">Ver todas</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">0</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Você tem 0 tarefas</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                </ul>
              </li>
              <li class="footer">
                <a href="#">Ver todas as tarefas</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="{{URL::asset('/img/avatar.png') }}" class="user-image" alt="User Image">
              <span class="hidden-xs">Administrador</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="{{URL::asset('/img/avatar.png') }}" class="img-circle" alt="User Image">

                <p>
                  Administrador - administração
                  <small>Membro de Fevereiro. 2017</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="{{ url('/sair') }}" class="btn btn-default btn-flat">Sair</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{URL::asset('/img/avatar.png') }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Administrador</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MENU DE NAVEGAÇÃO</li>
        
        <li>
          <a href="{{ url('/') }}">
            <i class="glyphicon glyphicon-home"></i> <span>INÍCIO</span>
         
          </a>
        </li>
        
        <li>
          <a href="#">
            <i class="glyphicon glyphicon-list-alt"></i> <span>ESTOQUE</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">novo</small>
            </span>
          </a>
            <ul class="treeview-menu">
             <li><a href="{{url('estoque/criar')}}"><i class="fa fa-circle-o"></i>Novo</a></li>
             <li><a href="{{url('estoque')}}"><i class="fa fa-circle-o"></i>Listar</a></li>
            </ul>
        </li>
        
        
         </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

         <div class="content-wrapper">
                @yield('content')
  
    
    
    
