<?php

namespace App\models\admin;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $table = 'Page';
    protected $fillable = ['title', 'slug', 'content'];
}
