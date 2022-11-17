<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Auth</title>
    <link href="/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/admin/css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/general/css/alertify.min.css">
    <script src="/general/js/alertify.min.js"></script>
    <script src="/general/js/general.js"></script>
</head>

<body class="bg-gradient-primary">

    <div class="container">
        @yield("content")
    </div>

    <script src="/admin/vendor/jquery/jquery.min.js"></script>
    <script src="/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="/admin/js/sb-admin-2.min.js"></script>

    @if(session()->has('success'))
        <script>alertify.success('{{session('success')}}', 1)</script>
    @endif
    
    @if(session()->has('error'))
        <script>alertify.error('{{session('error')}}', 1)</script>
    @endif

     @if(session()->has('warning'))
        <script>alertify.warning('{{session('warning')}}', 1)</script>
    @endif

    @foreach($errors->all() as $error)
        <script>alertify.error('{{$error}}', 1)</script>
    @endforeach
</body>
</html>