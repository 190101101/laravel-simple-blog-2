<?php

namespace App\models\admin;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'Category';
    protected $fillable = ['title', 'slug'];
}
