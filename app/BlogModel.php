<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogModel extends Model
{
    protected $table = 'blogs';
	public $timestamps = true;
    public $fillable = ['id','title','category','description','user_id'];
}
