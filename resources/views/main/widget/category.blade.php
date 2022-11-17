@isset($data['category'])
<div class="col-md-3 mb-5">
    <div class="card">
        <a href="/category" class="card-header">
            categories
        </a>
    </div>
    <ul class="list-group">
        @foreach($data['category'] as $category)
        <li class="list-group-item @if(Request::segment(2) == $category->slug) bg-success @endif">
            <a href="/category/{{$category->slug}}">{{$category->title}}</a>
            <div class="bg-dark badge">{{$category->getCount()}}</div>
        </li>
        @endforeach
    </ul>
</div>
@endisset