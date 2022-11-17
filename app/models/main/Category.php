<?php

namespace App\models\main;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'Category';

    public function getCount()
    {
        return $this->hasMany('App\models\main\Blog', 'category_id', 'id')->count();
    }
}
