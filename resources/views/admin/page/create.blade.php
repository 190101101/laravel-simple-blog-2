@extends('admin.layout.admin')
@section('title', 'page create')
@section('content')
<div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between" style="align-items: center;">
        <span class="m-0 font-weight-bold text-primary">pages</span>
        <a href="/admin/page" class="btn btn-success">back</a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{{route('page.store')}}" method="POST">
                @csrf
                <div class="form-group">
                    <label>title</label>
                    <input type="text" class="form-control" name="title" placeholder="title">
                </div>
                <div class="form-group">
                    <label>content</label>
                    <textarea type="text" id="editor1" name="content" class="form-control" placeholder="content"></textarea>
                    <script>CKEDITOR.replace('editor1')</script>
                </div>
                <button type="submit" class="btn btn-success">create</button>
            </form>
        </div>
    </div>
</div>
@endsection