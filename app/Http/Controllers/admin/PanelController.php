<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\admin\Category;
use App\models\admin\Blog;
use App\models\admin\Page;
use App\models\admin\Contact;

class PanelController extends Controller
{
    public function index()
    {
        $category = Category::all()->count();
        $blog = Blog::all()->count();
        $page = Page::all()->count();
        $contact = Contact::all()->count();
        return view('admin.panel.index')
        ->with('blog', $blog)
        ->with('category', $category)
        ->with('page', $page)
        ->with('contact', $contact);
    }
}
