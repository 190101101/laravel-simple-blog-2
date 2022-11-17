@extends('admin.layout.admin')
@section('title', 'contact update')
@section('content')
@php($contact = $data['contact'])
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">contacts</span>
        <a href="/admin/contact" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <div class="form-group">
                <label>name</label>
                <input type="text" class="form-control" value="{{$contact->name}}" readonly>
            </div>
            <div class="form-group">
                <label>email</label>
                <input type="text" class="form-control" value="{{$contact->email}}" readonly>
            </div>
            <div class="form-group">
                <label>phone</label>
                <input type="text" class="form-control" value="{{$contact->phone}}" readonly>
            </div>
            <div class="form-group">
                <label>message</label>
                <textarea type="text" class="form-control" readonly>{{$contact->message}}</textarea>
            </div>
        </div>
    </div>
</div>
@endsection

