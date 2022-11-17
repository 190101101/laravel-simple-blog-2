@extends('admin.layout.admin')
@section('title', 'blog update')
@section('content')
@php($blog = $data['blog'])
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">blogs</span>
        <a href="/admin/blog" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{{route('blog.update', $blog->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>title</label>
                    <input type="text" class="form-control" name="title" value="{{$blog->title}}">
                </div>
                <div class="form-group">
                    <label>category</label>
                    <select name="category_id" class="custom-select">
                        <option value="{{$blog->category_id}}">
                            {{$blog->getCategory->title}}
                        </option>
                        @foreach($data['category'] as $category)
                        <option value="{{$category->id}}">{{$category->title}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>content</label>
                    <textarea type="text" id="editor1" name="content" class="form-control">{{$blog->content}}</textarea>
                    <script>CKEDITOR.replace('editor1')</script>
                </div>
                <button type="submit" class="btn btn-success">update</button>
            </form>
        </div>
    </div>
</div>
@endsection

