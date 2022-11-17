<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\admin\Blog;
use App\models\admin\Category;
use Validator;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['blog'] = Blog::orderBy('id', 'desc')->get();
        return view('admin.blog.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['category'] = Category::orderBy('id', 'desc')->get();
        return view('admin.blog.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Validator::make($request->all(), [
            'title' => 'required',
            'category_id' => 'required',
            'content' => 'required',
        ])->validate();

        return Blog::create([
            'title' => $request->title,
            'slug' => str_slug($request->title),
            'category_id' => $request->category_id,
            'content' => $request->content,
        ])
        ? back()->with('success', 'created succesfully')
        : back()->with('error', 'something wrong');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    public function status($id)
    {
        $blog = Blog::findOrFail($id);
        $status = $blog->status == 1 ? 0 : 1;
        $blog->status = $status;
        echo $blog->save();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['category'] = Category::orderBy('id', 'desc')->get();
        $data['blog'] = Blog::where('id', $id)->first() ?? abort(404);
        return view('admin.blog.update', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        Validator::make($request->all(), [
            'category_id' => 'required',
            'title' => 'required',
            'content' => 'required',
        ])->validate();

        $blog = Blog::findOrFail($id);
        $blog->category_id = $request->category_id;
        $blog->title = $request->title;
        $blog->slug = str_slug($request->title);
        $blog->content = $request->content;
        return $blog->save()
            ? back()->with('success', 'created succesfully')
            : back()->with('error', 'something wrong');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::find($id);
        echo $blog->delete() ? true : false;
    }
}
