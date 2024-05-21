<?php

namespace App\Http\Controllers;

use App\Models\Autor;
use App\Models\Podcast;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    public function show($id)
    {
        // Pobierz autora i jego komentarze
        $author = Autor::with('comments')->find($id);
        $podcasts = Podcast::where('idAutora', $id)->get();
    
        // Przekaż autora i podcasty do widoku
        return view('pages.author_details', compact('author', 'podcasts'));
    }
    
}
