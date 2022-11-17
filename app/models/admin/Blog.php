<?php

namespace App\models\admin;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'Blog';
    protected $fillable = ['title', 'content', 'category_id', 'slug', 'status'];

    public function getCategory()
    {
        return $this->hasOne('App\models\admin\Category', 'id', 'category_id');
    }
}
