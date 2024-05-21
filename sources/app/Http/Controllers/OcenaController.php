<?php

namespace App\Http\Controllers;

use App\Models\Ocena;
use Illuminate\Http\Request;

class OcenaController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'podcast_id' => 'required|exists:podcasty,id',
            'ocena' => 'required|integer|min:1|max:5'
        ]);

        Ocena::create([
            'idPodcastu' => $request->podcast_id,
            'ocena' => $request->ocena,
            'idUzytkownika' => auth()->id()
        ]);

        return back();
    }
}
