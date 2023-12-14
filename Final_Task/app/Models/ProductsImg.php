<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductsImg extends Model
{
    use HasFactory;

    protected $fillable = ['author', 'title', 'img', 'price', 'percent'];

}
