<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="{{$description}}" />
        <meta name="author" content="{{$author}}" />
        <meta name="keyword" content="{{$keyword}}" />
        <title>@yield('title', $description)</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="/main/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="/general/css/alertify.min.css">
        <script src="/general/js/alertify.min.js"></script>
        <script src="/general/js/general.js"></script>
    </head>
    <body>

        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" @if(Auth::user()) href="/admin/panel" @else href="/admin/auth" @endif>blog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto py-4 py-lg-0">
                        <li class="nav-item">
                            <a class="nav-link px-lg-3 py-3 py-lg-4" href="/">home</a>
                        </li>

                        @foreach($pages as $page)
                        <li class="nav-item">
                            <a class="nav-link px-lg-3 py-3 py-lg-4" 
                            href="/page/{{$page->slug}}">{{$page->title}}</a>
                        </li>
                        @endforeach

                        <li class="nav-item">
                            <a class="nav-link px-lg-3 py-3 py-lg-4" href="/contact">Contact</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('{{asset('main')}}/assets/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-12">
                        <div class="site-heading">
                            <h2>@yield('head', 'Clean Blog')</h2>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                @yield('content')
            </div>
        </div>
        <!-- Footer-->
        <footer class="border-top">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <div class="small text-center text-muted fst-italic">{!!$copyright!!}  {{date('Y')}}</div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/main/js/scripts.js"></script>

        @if(session()->has('success'))
            <script>alertify.success('{{session('success')}}')</script>
        @endif
        
        @if(session()->has('error'))
            <script>alertify.error('{{session('error')}}')</script>
        @endif

         @if(session()->has('warning'))
            <script>alertify.warning('{{session('warning')}}')</script>
        @endif

        @foreach($errors->all() as $error)
            <script>alertify.error('{{$error}}')</script>
        @endforeach

    </body>
</html>
