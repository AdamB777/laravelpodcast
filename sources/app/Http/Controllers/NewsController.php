<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        // Pobierz wszystkie newsy z bazy danych i posortuj je od najnowszego
        $news = News::orderBy('created_at', 'desc')->get();

        // Przekaż dane do widoku pages/news.blade.php
        return view('pages.news', compact('news'));
    }
}
