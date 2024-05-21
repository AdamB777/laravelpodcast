<?php

namespace App\Http\Controllers;

use App\Models\Autor;
use App\Models\Podcast;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');
        $results = $this->performSearch($query);

        return view('search.results', compact('results'));
    }

    private function performSearch($query)
    {
        $autorResults = Autor::where('imieAutora', 'LIKE', '%' . $query . '%')
            ->orWhere('nazwiskoAutora', 'LIKE', '%' . $query . '%')
            ->get();

        $podcastResults = Podcast::where('tytul', 'LIKE', '%' . $query . '%')
            ->get();

        return [
            'autorzy' => $autorResults,
            'podcasty' => $podcastResults,
        ];
    }
}
