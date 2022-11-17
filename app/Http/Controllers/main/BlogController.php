<?php

namespace App\Http\Controllers\main;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\main\Category;
use App\models\main\Blog;
use App\models\main\Page;

class BlogController extends Controller
{
    public function index()
    {
        $data['category'] = Category::where('id', '!=', 1)->get();
        $data['blog'] = Blog::orderBy('id', 'desc')->where('category_id', '!=', 1)->paginate(5);
        $data['page'] = Page::orderBy('order', 'ASC')->get();
        return view('main.blog.index', compact('data'));
    }

    public function blog($category_slug, $slug)
    {
        $category = Category::where('id', '!=', 1)->whereSlug($category_slug)->first()  ?? abort(404, 'category not found');
        $blog = Blog::where('slug', $slug)->where('category_id', $category->id)->where('id', '!=', 1)->first() 
        ?? abort(404, 'blog not found');

        $blog->increment('hit');
        $data['blog'] = $blog;
        $data['category'] = Category::where('id', '!=', 1)->get();
        return view('main.blog.blog', compact('data'));
    }
}
