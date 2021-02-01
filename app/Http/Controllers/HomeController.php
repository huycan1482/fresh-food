<?php

namespace App\Http\Controllers;

use App\Category;
use App\Setting;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $banner;
    protected $menu;
    protected $setting;

    public function __construct()
    {
        $this->menu = Category::where(['is_active' => 1])->get();
        $this->setting = Setting::first();
    }

}
