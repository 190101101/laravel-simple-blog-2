<?php

namespace App\Http\Controllers\main;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\main\Category;
use App\models\main\Blog;

class CategoryController extends Controller
{
    public function index()
    {
        $data['category'] = Category::orderBy('id', 'desc')
        ->where('id', '!=', 1)->paginate(5);
        return view('main.category.index', compact('data'));
    }

    public function category($slug)
    {
        $data['category'] = Category::where('id', '!=', 1)->get();
        $category = Category::where('slug', $slug)->where('id', '!=', 1)->first() ?? abort(404, 'category not found');
        $data['blog'] = Blog::where('category_id', $category->id)->paginate(5);
        return view('main.category.category', compact('data'));
    }
}
