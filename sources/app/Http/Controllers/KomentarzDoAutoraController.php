<?php

namespace App\Http\Controllers;

use App\Models\KomentarzDoAutora;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KomentarzDoAutoraController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:256',
            'comment' => 'required',
            'author_id' => 'required|exists:autorzy,id',
        ]);

        $comment = new KomentarzDoAutora;
        $comment->tytul = $request->title;
        $comment->tresc = $request->comment;
        $comment->idAutora = $request->author_id;
        $comment->idUzytkownika = Auth::id(); // TODO: Change this with logged in user id
        $comment->save();
        return redirect()->back();
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(KomentarzDoAutora $comment)
    {
        return view('comments.edit', compact('comment'));
    }


    public function update(Request $request, KomentarzDoAutora $comment)
    {
        $request->validate([
            'title' => 'required|max:256',
            'comment' => 'required',
        ]);

        $comment->update([
            'tytul' => $request->title,
            'tresc' => $request->comment,
        ]);

        return redirect()->route('author.show', ['id' => $comment->idAutora]);
    }


    public function destroy(KomentarzDoAutora $comment)
    {
        $comment->delete();
        return redirect()->back();
    }
}
