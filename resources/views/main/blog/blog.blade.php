@extends('main.layout.main')
@section('title', 'blog')

@php($blog = $data['blog'])

@section('head', $blog->title)
@section('content')
    <div class="col-md-9">
        {!!$blog->content!!}
        <p>
            <span>hit: {{$blog->hit}}</span>
        </p>
    </div>
    @include('main.widget.category')
@endsection

