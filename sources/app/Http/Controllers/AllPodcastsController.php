<?php

namespace App\Http\Controllers;

use App\Models\Podcast;
use Illuminate\Http\Request;

class AllPodcastsController extends Controller
{
    public function index()
    {
        // Pobierz wszystkie podcasty z bazy danych
        $podcasts = Podcast::with('author')->get();

        // Przekaż dane do widoku pages/all_podcasts.blade.php
        return view('pages.all_podcasts', compact('podcasts'));
    }
}

