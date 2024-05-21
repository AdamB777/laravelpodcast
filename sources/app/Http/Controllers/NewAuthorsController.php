<?php

namespace App\Http\Controllers;

use App\Models\Autor;
use Illuminate\Http\Request;

class NewAuthorsController extends Controller
{
    public function index()
    {
        // Get the three latest authors from the database
        $authors = Autor::orderBy('created_at', 'desc')->take(3)->get();

        // Pass the data to the view pages/new_authors.blade.php
        return view('pages.new_authors', compact('authors'));
    }
}
