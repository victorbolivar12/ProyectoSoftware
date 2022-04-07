@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Registro') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="row mb-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end">{{ __('Nombre') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="apellido" class="col-md-4 col-form-label text-md-end">{{ __('Apellido') }}</label>

                            <div class="col-md-6">
                                <input id="apellido" type="text" class="form-control " name="apellido" required autofocus>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="CI" class="col-md-4 col-form-label text-md-end">{{ __('CI') }}</label>

                            <div class="col-md-6">
                                <input id="CI" type="number" class="form-control " name="CI" required autofocus>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="turno" class="col-md-4 col-form-label text-md-end">{{ __('Turno') }}</label>

                            <div class="col-md-6">
                                <select class="form-control" name="turno">
                                    <option value="Mañana" selected>Mañana</option>
                                    <option value="Tarde" >Tarde</option>
                                    <option value="Noche" >Noche</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="fecha_ingreso" class="col-md-4 col-form-label text-md-end">{{ __('Fecha de Ingreso') }}</label>

                            <div class="col-md-6">
                                <input id="fecha_ingreso" type="date" class="form-control" name="fecha_ingreso" required  autofocus>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="type_user" class="col-md-4 col-form-label text-md-end">{{ __('Tipo de Usuario') }}</label>

                            <div class="col-md-6">
                                <select class="form-control" name="type_user">
                                    <option value="Administrador" selected>Administrador</option>
                                    <option value="Usuario" >Usuario</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-end">{{ __('Confirmar Contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
