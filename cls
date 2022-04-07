warning: LF will be replaced by CRLF in app/Http/Controllers/Auth/RegisterController.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in app/Models/User.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in app/Providers/RouteServiceProvider.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in database/migrations/2014_10_12_000000_create_users_table.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in resources/views/auth/register.blade.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in resources/views/layouts/app.blade.php.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in resources/views/welcome.blade.php.
The file will have its original line endings in your working directory
[1mdiff --git a/app/Http/Controllers/Auth/RegisterController.php b/app/Http/Controllers/Auth/RegisterController.php[m
[1mindex ed1a5e0..fc73688 100644[m
[1m--- a/app/Http/Controllers/Auth/RegisterController.php[m
[1m+++ b/app/Http/Controllers/Auth/RegisterController.php[m
[36m@@ -66,8 +66,13 @@[m [mprotected function create(array $data)[m
     {[m
         return User::create([[m
             'name' => $data['name'],[m
[32m+[m[32m            'apellido' => $data['apellido'],[m
[32m+[m[32m            'CI' => $data['CI'],[m
[32m+[m[32m            'turno' => $data['turno'],[m
[32m+[m[32m            'fecha_ingreso' => $data['fecha_ingreso'],[m
             'email' => $data['email'],[m
[31m-            'password' => Hash::make($data['password']),[m
[32m+[m[32m            'type_user' => $data['type_user'],[m
[32m+[m[32m            'password' => Hash::make($data['password'])[m
         ]);[m
     }[m
 }[m
[1mdiff --git a/app/Models/User.php b/app/Models/User.php[m
[1mindex 8996368..5d6c0d2 100644[m
[1m--- a/app/Models/User.php[m
[1m+++ b/app/Models/User.php[m
[36m@@ -19,7 +19,12 @@[m [mclass User extends Authenticatable[m
      */[m
     protected $fillable = [[m
         'name',[m
[32m+[m[32m        'apellido',[m
[32m+[m[32m        'CI',[m
[32m+[m[32m        'turno',[m
[32m+[m[32m        'fecha_ingreso',[m
         'email',[m
[32m+[m[32m        'type_user',[m
         'password',[m
     ];[m
 [m
[1mdiff --git a/app/Providers/RouteServiceProvider.php b/app/Providers/RouteServiceProvider.php[m
[1mindex 4f1d3d9..d468971 100644[m
[1m--- a/app/Providers/RouteServiceProvider.php[m
[1m+++ b/app/Providers/RouteServiceProvider.php[m
[36m@@ -17,7 +17,7 @@[m [mclass RouteServiceProvider extends ServiceProvider[m
      *[m
      * @var string[m
      */[m
[31m-    public const HOME = '/';[m
[32m+[m[32m    public const HOME = '/admin';[m
 [m
     /**[m
      * Define your route model bindings, pattern filters, etc.[m
[1mdiff --git a/database/migrations/2014_10_12_000000_create_users_table.php b/database/migrations/2014_10_12_000000_create_users_table.php[m
[1mindex cf6b776..aea597e 100644[m
[1m--- a/database/migrations/2014_10_12_000000_create_users_table.php[m
[1m+++ b/database/migrations/2014_10_12_000000_create_users_table.php[m
[36m@@ -16,8 +16,13 @@[m [mpublic function up()[m
         Schema::create('users', function (Blueprint $table) {[m
             $table->id();[m
             $table->string('name');[m
[32m+[m[32m            $table->string('apellido');[m
[32m+[m[32m            $table->integer('CI');[m
[32m+[m[32m            $table->string('turno');[m
[32m+[m[32m            $table->date('fecha_ingreso');[m
             $table->string('email')->unique();[m
             $table->timestamp('email_verified_at')->nullable();[m
[32m+[m[32m            $table->string('type_user');[m
             $table->string('password');[m
             $table->rememberToken();[m
             $table->timestamps();[m
[1mdiff --git a/resources/views/auth/register.blade.php b/resources/views/auth/register.blade.php[m
[1mindex 12cad1a..58c8e20 100644[m
[1m--- a/resources/views/auth/register.blade.php[m
[1m+++ b/resources/views/auth/register.blade.php[m
[36m@@ -5,14 +5,14 @@[m
     <div class="row justify-content-center">[m
         <div class="col-md-8">[m
             <div class="card">[m
[31m-                <div class="card-header">{{ __('Register') }}</div>[m
[32m+[m[32m                <div class="card-header">{{ __('Registro') }}</div>[m
 [m
                 <div class="card-body">[m
                     <form method="POST" action="{{ route('register') }}">[m
                         @csrf[m
 [m
                         <div class="row mb-3">[m
[31m-                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Name') }}</label>[m
[32m+[m[32m                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Nombre') }}</label>[m
 [m
                             <div class="col-md-6">[m
                                 <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>[m
[36m@@ -26,7 +26,43 @@[m
                         </div>[m
 [m
                         <div class="row mb-3">[m
[31m-                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>[m
[32m+[m[32m                            <label for="apellido" class="col-md-4 col-form-label text-md-end">{{ __('Apellido') }}</label>[m
[32m+[m
[32m+[m[32m                            <div class="col-md-6">[m
[32m+[m[32m                                <input id="apellido" type="text" class="form-control " name="apellido" required autofocus>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m
[32m+[m[32m                        <div class="row mb-3">[m
[32m+[m[32m                            <label for="CI" class="col-md-4 col-form-label text-md-end">{{ __('CI') }}</label>[m
[32m+[m
[32m+[m[32m                            <div class="col-md-6">[m
[32m+[m[32m                                <input id="CI" type="number" class="form-control " name="CI" required autofocus>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m
[32m+[m[32m                        <div class="row mb-3">[m
[32m+[m[32m                            <label for="turno" class="col-md-4 col-form-label text-md-end">{{ __('Turno') }}</label>[m
[32m+[m
[32m+[m[32m                            <div class="col-md-6">[m
[32m+[m[32m                                <select class="form-control" name="turno">[m
[32m+[m[32m                                    <option value="Mañana" selected>Mañana</option>[m
[32m+[m[32m                                    <option value="Tarde" >Tarde</option>[m
[32m+[m[32m                                    <option value="Noche" >Noche</option>[m
[32m+[m[32m                                </select>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m
[32m+[m[32m                        <div class="row mb-3">[m
[32m+[m[32m                            <label for="fecha_ingreso" class="col-md-4 col-form-label text-md-end">{{ __('Fecha de Ingreso') }}</label>[m
[32m+[m
[32m+[m[32m                            <div class="col-md-6">[m
[32m+[m[32m                                <input id="fecha_ingreso" type="date" class="form-control" name="fecha_ingreso" required  autofocus>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m
[32m+[m[32m                        <div class="row mb-3">[m
[32m+[m[32m                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email') }}</label>[m
 [m
                             <div class="col-md-6">[m
                                 <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">[m
[36m@@ -40,7 +76,18 @@[m
                         </div>[m
 [m
                         <div class="row mb-3">[m
[31m-                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>[m
[32m+[m[32m                            <label for="type_user" class="col-md-4 col-form-label text-md-end">{{ __('Tipo de Usuario') }}</label>[m
[32m+[m
[32m+[m[32m                            <div class="col-md-6">[m
[32m+[m[32m                                <select class="form-control" name="type_user">[m
[32m+[m[32m                                    <option value="Administrador" selected>Administrador</option>[m
[32m+[m[32m                                    <option value="Usuario" >Usuario</option>[m
[32m+[m[32m                                </select>[m
[32m+[m[32m                            </div>[m
[32m+[m[32m                        </div>[m
[32m+[m
[32m+[m[32m                        <div class="row mb-3">[m
[32m+[m[32m                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Contraseña') }}</label>[m
 [m
                             <div class="col-md-6">[m
                                 <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">[m
[36m@@ -54,7 +101,7 @@[m
                         </div>[m
 [m
                         <div class="row mb-3">[m
[31m-                            <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirm Password') }}</label>[m
[32m+[m[32m                            <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirmar Contraseña') }}</label>[m
 [m
                             <div class="col-md-6">[m
                                 <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">[m
[1mdiff --git a/resources/views/home.blade.php b/resources/views/home.blade.php[m
[1mdeleted file mode 100644[m
[1mindex 1f34466..0000000[m
[1m--- a/resources/views/home.blade.php[m
[1m+++ /dev/null[m
[36m@@ -1,23 +0,0 @@[m
[31m-@extends('layouts.app')[m
[31m-[m
[31m-@section('content')[m
[31m-<div class="container">[m
[31m-    <div class="row justify-content-center">[m
[31m-        <div class="col-md-8">[m
[31m-            <div class="card">[m
[31m-                <div class="card-header">{{ __('Dashboard') }}</div>[m
[31m-[m
[31m-                <div class="card-body">[m
[31m-                    @if (session('status'))[m
[31m-                        <div class="alert alert-success" role="alert">[m
[31m-                            {{ session('status') }}[m
[31m-                        </div>[m
[31m-                    @endif[m
[31m-[m
[31m-                    {{ __('You are logged in!') }}[m
[31m-                </div>[m
[31m-            </div>[m
[31m-        </div>[m
[31m-    </div>[m
[31m-</div>[m
[31m-@endsection[m
[1mdiff --git a/resources/views/layouts/app.blade.php b/resources/views/layouts/app.blade.php[m
[1mindex 9961df7..522d9f2 100644[m
[1m--- a/resources/views/layouts/app.blade.php[m
[1m+++ b/resources/views/layouts/app.blade.php[m
[36m@@ -7,7 +7,7 @@[m
     <!-- CSRF Token -->[m
     <meta name="csrf-token" content="{{ csrf_token() }}">[m
 [m
[31m-    <title>{{ config('app.name', 'Laravel') }}</title>[m
[32m+[m[32m    <title>Hospital Raul Leoni</title>[m
 [m
     <!-- Scripts -->[m
     <script src="{{ asset('js/app.js') }}" defer></script>[m
[36m@@ -24,7 +24,7 @@[m
         <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">[m
             <div class="container">[m
                 <a class="navbar-brand" href="{{ url('/') }}">[m
[31m-                    {{ config('app.name', 'Laravel') }}[m
[32m+[m[32m                    <img src="{{ asset('img/logo.png')}}" width="40px" class="brand-logo" alt="">[m
                 </a>[m
                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">[m
                     <span class="navbar-toggler-icon"></span>[m
[1mdiff --git a/resources/views/welcome.blade.php b/resources/views/welcome.blade.php[m
[1mindex e454a71..149046b 100644[m
[1m--- a/resources/views/welcome.blade.php[m
[1m+++ b/resources/views/welcome.blade.php[m
[36m@@ -47,7 +47,8 @@[m
             </ul>[m
         </nav>[m
 [m
[31m-        <!-------Home sections--------->[m
[32m+[m[32m<!-------Home sections--------->[m
[32m+[m
         <header class="hero-section">[m
             <div class="content">[m
                 <img src="{{ asset('img/logo.png')}}" alt="" class="logo">[m
