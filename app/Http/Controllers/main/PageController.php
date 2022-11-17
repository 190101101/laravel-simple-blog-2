<?php

namespace App\Http\Controllers\main;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\main\Page;

class PageController extends Controller
{
    public function page($slug)
    {
        $data['page'] = Page::whereSlug($slug)->first() ?? abort(404, 'page not found');
        return view('main.page.page', compact('data'));
    }
}
