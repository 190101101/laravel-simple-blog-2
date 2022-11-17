@extends('main.layout.main')

@php($page = $data['page'])

@section('title', $page->title)

@section('head', $page->title)
@section('content')
    <div class="col-md-12">
        {!!$page->content!!}
    </div>
@endsection


