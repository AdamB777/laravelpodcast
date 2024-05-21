<?php

namespace App\Http\Controllers;

use App\Models\Podcast;
use Illuminate\Http\Request;

class NewPodcastsController extends Controller
{
    public function index()
    {
        // Pobierz 3 najnowsze podcasty
        $podcasts = Podcast::with('author')
            ->orderBy('created_at', 'desc')
            ->take(3)
            ->get();

        // Przekaż dane do widoku pages/new_podcasts.blade.php
        return view('pages.new_podcasts', compact('podcasts'));
    }
}
