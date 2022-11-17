<?php

namespace App\Http\Controllers\main;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\models\main\Contact;
use Validator;

class ContactController extends Controller
{
    public function index()
    {
        return view('main.contact.index');
    }

    public function send(Request $request)
    {
        Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'message' => 'required',
        ])->validate();

        return Contact::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
        ]) 
        ? back()->with('success', 'send succesfully')
        : back()->with('error', 'something wrong');
    }
}
