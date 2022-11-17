@extends('admin.layout.admin')
@section('title', 'setting')
@section('content')
    <div class="card shadow mb-4">
        <div class="card-header d-flex justify-content-between" style="align-items: center;">
            <span class="m-0 font-weight-bold text-primary">
                <span>setting</span>
                <span> {{$data['setting']->count()}} </span>
                <span>found</span>
            </span>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>description</th>
                            <th>key</th>
                            <th>value</th>
                            <th>type</th>
                            <th>
                                <a class="btn btn-info btn-circle btn-sm">
                                    <i class="fas fa-info-circle"></i>
                                </a>
                            </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>id</th>
                            <th>description</th>
                            <th>key</th>
                            <th>value</th>
                            <th>type</th>
                            <th>
                                <a class="btn btn-info btn-circle btn-sm">
                                    <i class="fas fa-info-circle"></i>
                                </a>
                            </th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @foreach($data['setting'] as $setting)
                            <tr>
                                <td>{{$setting->id}}</td>
                                <td>{{$setting->description}}</td>
                                <td>{{$setting->key}}</td>
                                <td>{{$setting->value}}</td>
                                <td>{{$setting->type}}</td>
                                <td>
                                    <a href="{{route('setting.edit', $setting->id)}}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
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

