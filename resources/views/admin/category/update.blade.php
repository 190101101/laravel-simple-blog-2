@extends('admin.layout.admin')
@section('title', 'category update')
@section('content')
@php($category = $data['category'])
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">categorys</span>
        <a href="/admin/category" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{{route('category.update', $category->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>title</label>
                    <input type="text" class="form-control" name="title" value="{{$category->title}}">
                </div>
                <button type="submit" class="btn btn-success">update</button>
            </form>
        </div>
    </div>
</div>
@endsection

