<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Search;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('query')) {
            $query = $request->input('query');
            $results = Search::where('title', 'like', '%' . $query . '%')->get();
        } else {
            $results = Search::all();
        }

        return view('search.index', compact('results'));
    }
}
