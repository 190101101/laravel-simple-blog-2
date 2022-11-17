<?php

namespace App\models\main;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'Contact';
    protected $fillable = ['name', 'email', 'phone', 'message'];
}
