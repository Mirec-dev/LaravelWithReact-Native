<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dessert;

class DessertController extends Controller
{
    public function index()
    {
        $desserts = Dessert::all();
        return response()->json($desserts);
    }
}
