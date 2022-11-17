@extends('admin.layout.admin')
@section('title', 'category')
@section('content')
    <div class="card shadow mb-4">
        <div class="card-header d-flex justify-content-between" style="align-items: center;">
            <span class="m-0 font-weight-bold text-primary">
                <span>category</span>
                <span> {{$data['category']->count()}} </span>
                <span>found</span>
            </span>
            <a href="/admin/category/create" class="btn btn-success">create</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>title</th>
                            <th>status</th>
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
                            <th>status</th>
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
                        @foreach($data['category'] as $category)
                            <tr>
                                <td>{{$category->id}}</td>
                                <td>{{str_limit($category->title, 20)}}</td>
                                <td>
                                    <label class="switch">
                                    <input type="checkbox" class="data-status"
                                        data-get="/admin/category/status/{{$category->id}}" 
                                        {{$category->status == 1 ? 'checked' : null}}> 
                                    <span class="slider round"></span>
                                    </label>
                                </td>
                                <td>{{$category->created_at}}</td>
                                <td>
                                    <a href="{{route('category.edit', $category->id)}}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                </td>
                                <td>
                                    <form action="{{ route('category.destroy', $category->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-circle btn-sm">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

