@extends('admin.layout.admin')
@section('title', 'contact')
@section('content')
    <div class="card shadow mb-4">
        <div class="card-header d-flex justify-content-between" style="align-items: center;">
            <span class="m-0 font-weight-bold text-primary">
                <span>contact</span>
                <span> {{$data['contact']->count()}} </span>
                <span>found</span>
            </span>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>email</th>
                            <th>phone</th>
                            <th>message</th>
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
                            <th>name</th>
                            <th>email</th>
                            <th>phone</th>
                            <th>message</th>
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
                        @foreach($data['contact'] as $contact)
                            <tr>
                                <td>{{$contact->id}}</td>
                                <td>{{str_limit($contact->name, 10)}}</td>
                                <td>{{str_limit($contact->email, 20)}}</td>
                                <td>{{$contact->phone}}</td>
                                <td>{{str_limit($contact->message, 50)}}</td>
                                <td>{{$contact->created_at}}</td>
                                <td>
                                    <a href="{{route('contact.show', $contact->id)}}" class="btn btn-info btn-circle btn-sm">
                                        <i class="fas fa-info-circle"></i>
                                    </a>
                                </td>
                                <td>
                                    <a data-get="{{route('contact.destroy', $contact->id)}}" 
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

