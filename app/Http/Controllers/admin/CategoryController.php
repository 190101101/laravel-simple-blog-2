<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\admin\Category;
use App\models\admin\Blog;
use Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['category'] = Category::orderBy('id', 'desc')->get();
        return view('admin.category.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['category'] = Category::orderBy('id', 'desc')->get();
        return view('admin.category.create', compact('data'));
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
        ])->validate();

        return Category::create([
            'title' => $request->title,
            'slug' => str_slug($request->title),
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
        $category = Category::findOrFail($id);
        $status = $category->status == 1 ? 0 : 1;
        $category->status = $status;
        echo $category->save();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['category'] = Category::where('id', $id)->first() ?? abort(404);
        return view('admin.category.update', compact('data'));
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
            'title' => 'required',
        ])->validate();

        return Category::where('id', $id)->update([
            'title' => $request->title,
            'slug' => str_slug($request->title),
        ])
        ? back()->with('success', 'updated succesfully')
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
        $category = Category::where('id', $id)->first();

        if($category){
            $blog = Blog::where('category_id', $category->id)->get();

            if($blog){
                $arr = collect($blog);
                $plucked = $arr->pluck('category_id');
                
                Blog::whereIn('category_id', $plucked->all())->update([
                    'category_id' => 1
                ]);
            }

            return Category::where('id', $category->id)->delete()
                ? back()->with('success', 'updated succesfully')
                : back()->with('error', 'something wrong');
        }
    }
}
