<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mainmeal;

class MainmealController extends Controller
{
    public function index()
    {
        $mainmeals = Mainmeal::all();
        return response()->json($mainmeals);
    }
}
