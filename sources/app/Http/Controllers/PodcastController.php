<?php

namespace App\Http\Controllers;

use App\Models\Podcast;
use Illuminate\Http\Request;

class PodcastController extends Controller
{
    public function show($id)
    {
        // Pobierz autora i jego komentarze
        $podcasts = Podcast::with('comments')->find($id);
    
        // Przekaż autora i podcasty do widoku
        return view('pages.podcast_details', compact( 'podcasts'));
    }
}
