<div class="col-md-9">
    @if(count($data['blog']) > 0)
        @foreach($data['blog'] as $blog)
            <div class="post-preview">
                <a href="/blog/{{$blog->getCategory->slug}}/{{$blog->slug}}">
                    <h2 class="post-title">{{$blog->title}}</h2>
                    <h3 class="post-subtitle">{{str_limit($blog->content, 50)}}</h3>
                </a>
                <p class="post-meta">
                    category 
                    <a href="category/{{$blog->getCategory->slug}}">
                        {{$blog->getCategory->title}}</a>
                     / created : {{$blog->created_at->diffForHumans()}}
                </p>
            </div>

            @if(!$loop->last)
                <hr class="my-4" />
            @endif
        @endforeach

        {{$data['blog']->links()}}

    @else
        <div class="alert alert-warning">empty</div>
    @endif
</div>