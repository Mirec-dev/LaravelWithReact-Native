<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Soup;

class SoupController extends Controller
{
    public function index()
    {
        $soups = Soup::all();
        return response()->json($soups);
    }
}
