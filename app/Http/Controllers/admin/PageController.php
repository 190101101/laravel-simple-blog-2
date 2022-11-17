<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\admin\Page;
use Validator;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['page'] = Page::orderBy('id', 'desc')->get();
        return view('admin.page.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['page'] = Page::orderBy('id', 'desc')->get();
        return view('admin.page.create', compact('data'));
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
            'content' => 'required',
        ])->validate();

        return Page::create([
            'title' => $request->title,
            'content' => $request->content,
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
        $page = Page::findOrFail($id);
        $status = $page->status == 1 ? 0 : 1;
        $page->status = $status;
        echo $page->save();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data['page'] = Page::where('id', $id)->first() ?? abort(404);
        return view('admin.page.update', compact('data'));
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
            'content' => 'required',
        ])->validate();

        return Page::where('id', $id)->update([
            'title' => $request->title,
            'content' => $request->content,
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
        $page = Page::find($id);
        echo $page->delete() ? true : false;
    }
}
