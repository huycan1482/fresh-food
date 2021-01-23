<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $banner;
    protected $menu;

    public function __construct()
    {
        $this->menu = Category::where(['is_active' => 1])->get();
    }

}
