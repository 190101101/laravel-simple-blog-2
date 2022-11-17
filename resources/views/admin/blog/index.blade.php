@extends('admin.layout.admin')
@section('title', 'blog')
@section('content')
    <div class="card shadow mb-4">
        <div class="card-header d-flex justify-content-between" style="align-items: center;">
            <span class="m-0 font-weight-bold text-primary">
                <span>blog</span>
                <span> {{$data['blog']->count()}} </span>
                <span>found</span>
            </span>
            <a href="/admin/blog/create" class="btn btn-success">create</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>title</th>
                            <th>category</th>
                            <th>content</th>
                            <th>status</th>
                            <th>hit</th>
                            <th>created</th>
                            <th>
                                <a class="btn btn-info btn-circle btn-sm">
                                    <i class="fas fa-info-circle"></i>
                                </a>
                            </th>
                             <th>
                                <a class="btn btn-danger btn-circle btn-sm">
                                    <i class="fas fa-trash"></i>
                                </a>
                            </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>id</th>
                            <th>title</th>
                            <th>category</th>
                            <th>content</th>
                            <th>status</th>
                            <th>hit</th>
                            <th>created</th>
                            <th>
                                <a class="btn btn-info btn-circle btn-sm">
                                    <i class="fas fa-info-circle"></i>
                                </a>
                            </th>
                             <th>
                                <a class="btn btn-danger btn-circle btn-sm">
                                    <i class="fas fa-trash"></i>
                                </a>
                            </th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($data['blog'] as $blog)
                            <tr>
                                <td>{{$blog->id}}</td>
                                <td>{{str_limit($blog->title, 20)}}</td>
                                <td>{{$blog->getCategory->title}}</td>
                                <td>{{str_limit($blog->content, 50)}}</td>
                                <td>
                                    <label class="switch">
                                    <input type="checkbox" class="data-status"
                                        data-get="/admin/blog/status/{{$blog->id}}" 
                                        {{$blog->status == 1 ? 'checked' : null}}> 
                                    <span class="slider round"></span>
                                    </label>
                                </td>
                                <td>{{$blog->hit}}</td>
                                <td>{{$blog->created_at}}</td>
                                <td>
                                    <a href="{{route('blog.edit', $blog->id)}}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                </td>
                                <td>
                                    <a data-get="{{route('blog.destroy', $blog->id)}}" 
                                        class="data-delete btn btn-danger btn-circle btn-sm">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
