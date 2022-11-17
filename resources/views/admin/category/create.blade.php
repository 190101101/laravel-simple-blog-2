@extends('admin.layout.admin')
@section('title', 'category create')
@section('content')
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">categorys</span>
        <a href="/admin/category" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{{route('category.store')}}" method="POST">
                @csrf
                <div class="form-group">
                    <label>title</label>
                    <input type="text" class="form-control" name="title" placeholder="title">
                </div>
                <button type="submit" class="btn btn-success">create</button>
            </form>
        </div>
    </div>
</div>
@endsection