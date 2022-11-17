<?php

namespace App\models\main;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'Blog';

    public function getCategory()
    {
        return $this->hasOne('App\models\main\Category', 'id', 'category_id');
    }
}
