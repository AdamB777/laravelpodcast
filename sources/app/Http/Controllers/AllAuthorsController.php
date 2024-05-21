<?php

namespace App\Http\Controllers;

use App\Models\Autor;
use Illuminate\Http\Request;

class AllAuthorsController extends Controller
{
    public function index()
    {
        // Pobierz wszystkie podcasty z bazy danych
        $authors = Autor::paginate(10);

        // Przekaż dane do widoku pages/all_podcasts.blade.php
        return view('pages.all_authors', compact('authors'));
    }
}
