@extends('main.layout.main')
@section('title', 'categorys')
@section('content')
    <div class="col-md-12">
        @foreach($data['category'] as $category)
            <div class="post-preview">
                <a href="/category/{{$category->slug}}">
                    <h2 class="post-title">{{$category->title}}</h2>
                </a>
                <p class="post-meta">
                    {{$category->getCount()}} blog / created : {{$category->created_at->diffForHumans()}}
                </p>
            </div>

            @if(!$loop->last)
                <hr class="my-4" />
            @endif
        @endforeach

        {{$data['category']->links()}}
    </div>
@endsection

