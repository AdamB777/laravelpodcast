<?php

namespace App\Http\Controllers;

use App\Models\KomentarzDoPodcastu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KomentarzDoPodcastuController extends Controller
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
            'podcast_id' => 'required|exists:podcasty,id',
        ]);

        $comment = new KomentarzDoPodcastu;
        $comment->tytul = $request->title;
        $comment->tresc = $request->comment;
        $comment->idPodcastu = $request->podcast_id;
        $comment->idUzytkownika = Auth::id(); // TODO: Change this with logged in user id
        $comment->data = now();
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
    public function edit(KomentarzDoPodcastu $podcast_comment)
    {
        // dd($podcast_comment);

        return view('comments.edit_podcast', compact('podcast_comment'));
    }



    public function update(Request $request, KomentarzDoPodcastu $podcast_comment)
    {
        $request->validate([
            'title' => 'required|max:256',
            'comment' => 'required',
        ]);

        $podcast_comment->update([
            'tytul' => $request->title,
            'tresc' => $request->comment,
        ]);
        // dd($podcast_comment);
        return redirect()->route('podcast.show', ['id' => $podcast_comment->idPodcastu]);
    }


    public function destroy(KomentarzDoPodcastu $podcast_comment)
    {
        $podcast_comment->delete();
        return redirect()->back();
    }
}
