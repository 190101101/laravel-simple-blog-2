@extends('admin.layout.auth')
@section('title', 'auth')
@section('content')

<div class="row justify-content-center">
    <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">log in panel</h1>
                            </div>
                            <form action="/admin/auth" method="POST" class="user">
                            	@csrf
                                <div class="form-group">
                                    <input type="text" name="login" class="form-control form-control-user" 
                                    value="{{old('login')}}"
                                    {{-- value="apsi"  --}}
                                    >
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" class="form-control form-control-user" value="{{old('password')}}"
                                    {{-- value="apsi2002"  --}}
                                    >
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox small">
                                        <input type="checkbox" name="remember" checked class="custom-control-input" id="customCheck">
                                        <label class="custom-control-label" for="customCheck">Remember
                                            Me</label>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                    Login
                                </button>
                                <a href="/" class="btn btn-success btn-user btn-block">
                                    back
                                </a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
@endsection






