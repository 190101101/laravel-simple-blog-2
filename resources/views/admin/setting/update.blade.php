@extends('admin.layout.admin')
@section('title', 'setting update')
@section('content')
@php($setting = $data['setting'])
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">settings</span>
        <a href="/admin/setting" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{{route('setting.update', $setting->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>description</label>
                    <input type="text" class="form-control" value="{{$setting->description}}" readonly>
                </div>
                <div class="form-group">
                    <label>key</label>
                    <input type="text" class="form-control" value="{{$setting->key}}" readonly>
                </div>
                <div class="form-group">
                    <label>value</label>
                    <input type="text" class="form-control" name="value" value="{{$setting->value}}">
                </div>
                <button type="submit" class="btn btn-success">update</button>
            </form>
        </div>
    </div>
</div>
@endsection

