<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Hospital Raul Leoni</title>
        
        <!-- Window icon -->
        <link rel="shortcut icon" href="{{ asset('img/favicon.png')}}" type="image/x-icom">
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/styles.css')}}">
    </head>
    <body>
            
        <nav class="navbar">
            <div class="nav">
                <img src="{{ asset('img/logo.png')}}" class="brand-logo" alt="">
                <div class="nav-items">
                    <div class="search">
                        <input type="text" class="search-box" placeholder="search brand, product">
                        <button class="search-btn">search</button>
                    </div>
                    @if (Route::has('login'))
                    <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/admin') }}"><img src="{{ asset('img/user.png')}}" alt=""></a>
                    @else
                        <a href="{{ route('login') }}" class="users">Log in</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="users">Register</a>
                        @endif
                    @endauth
                    </div>
                    @endif
                </div>
            </div>
            <ul class="links-container">
                <li class="link-item"><a href="#" class="link">Medicamentos</a></li>
                <li class="link-item"><a href="#" class="link">Almacenes</a></li>
                <li class="link-item"><a href="#" class="link">Medicos</a></li>
            </ul>
        </nav>

<!-------Home sections--------->

        <header class="hero-section">
            <div class="content">
                <img src="{{ asset('img/logo.png')}}" alt="" class="logo">
                <p class="sub-heading">HOSPITAL RAUL LEONI</p>
            </div>
        </header>

<!--------------------------------footer section------------------------------------->
        <footer>
            <div class="container-footer">
                <div class="sec aboutus">
                    <h2>Sobre Nosotros</h2>
                    <p>El objetivo es proveer a las personas de escasos recursos, de atención médica y hospitalaria.<br>Asi como asegurar en la comunidad la salud y la prevención de enfermedades.</p>
                    <ul class="sci">
                        <li><a href="#" target="_blank"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="sec quicklinks">
                    <h2>Enlaces Rapidos</h2>
                    <ul>
                        <li><a href="#">Nosotros</a></li>
                        <li><a href="#">Histoira</a></li>
                        <li><a href="#">Valores</a></li>
                        <li><a href="#">Autoridades</a></li>
                        <li><a href="#">Servicios</a></li>
                    </ul>
                </div>
                <div class="sec contact">
                        <h2>Medios de Contacto</h2>
                        <ul class="info">
                            <li>
                                <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                                <span class="text">Ciudad Guayana, San Felix
                                    <br>Parroquia Dalla Costa
                                    <br>Barrio Guaiparo, Avenida Centurión,<br>
                                    Estado Bolívar – Venezuela
                                </span>
                            </li>
                            <li>
                                <span><i class="fa fa-phone" aria-hidden="true"></i></span>
                                <a class="cell-number" href="">+58 (000) 000000</a></p>
                            </li>
                        </ul>
                </div>
            </div>
        </footer>

        <div class="copyrightText">
                <p>copyrigh 2022 Proyecto de Ingenieria de Software All rights Reserved by  <a href="https://github.com/victorbolivar12">Alunnos de la Uneg</a></p>
        </div>

        <script src="https://kit.fontawesome.com/419d745e5b.js" crossorigin="anonymous"></script>
    </body>
</html>
