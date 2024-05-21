@php
    use Illuminate\Support\Facades\Auth;
@endphp

@extends('layouts.app')

@section('content')
    <div class="mt-24 md:mt-36 2xl:mt-24 mb-4 bg-white rounded-lg shadow dark:border dark:border-gray-700 bg-gray-50 dark:bg-gray-800 mx-6 md:mx-0 px-2 md:px-16 py-7 shadow rounded">

        <h1 class="text-3xl text-center md:text-left font-bold dark:text-gray-300 tracking-wide">{{ $author->imieAutora }} {{ $author->nazwiskoAutora }}</h1>

        <div class="flex flex-col md:flex-row items-center mt-6">
            <div class="mb-6 md:mb-0">
                <img class="max-w-56 max-h-56" src="../images/authors/{{ $author->zdjecieAutora }}.jpg" alt="Zdjęcie autora">
            </div>
            <div class="relative w-full md:w-3/4 px-6 text-lg text-justify md:text-left dark:text-gray-400">{{ $author->opisAutora }}</div>
        </div>

        <div class="mt-8 px-6 md:px-0 border-t border-gray-500">
            <h3 class="text-2xl font-semibold mb-6 mt-3 dark:text-gray-300">Podcasty autora</h3>
            @foreach ($podcasts as $podcast)
                <div class="flex items-center">
                    <div>
                        <img src="../images/podcasts_logo/{{ $podcast->zdjeciePodcastu }}.jpg"
                             alt="Miniaturka podcastu" class="xl:h-32 xl:w-32">
                    </div>

                    <div class="text-lg dark:text-gray-400 ml-6">
                        <div class="text-xl font-semibold">
                            {{ $podcast->tytul }}
                        </div>
                        <p>{{ Str::limit($podcast->opis, 100) }}</p>
                        <a href="{{ route('podcast.show', $podcast->id) }}"><button type="button" class="mt-2 focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-sm rounded-lg text-sm px-3 py-1.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900">Pokaż więcej</button></a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <div class="text-lg px-6 md:px-0">
        <h3 class="text-3xl font-semibold mb-6 pt-2 dark:text-gray-300">Komentarze</h3>
        @foreach ($author->comments as $comment)
            <div
                class="flex-row mb-4 bg-white rounded-lg shadow dark:border dark:border-gray-700 bg-gray-50 dark:bg-gray-800 hover:bg-gray-100 dark:hover:bg-slate-800 p-5 shadow rounded ">
                <div class="flex-col">
                    <h3 class="text-xl font-semibold pb-2 dark:text-gray-300">{{ $comment->tytul }}</h3>
                    <p class="dark:text-gray-400">{{ $comment->tresc }}</p>
                    <p class="text-sm my-2 italic dark:text-gray-400">Opublikowane: {{ $comment->created_at }} <span
                            class="ml-2">Autor komentarza: {{ $comment->user->login }}</span></p>
                </div>
                @if ($comment->user->id === Auth::id())

                    <div class="flex items-center mt-1">
                        <form method="POST" action="{{ route('comments.destroy', ['comment' => $comment->id]) }}">
                            @csrf
                            @method('DELETE')
                            <button type="submit"
                                    class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-xs px-3 py-1 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">
                                Usuń
                            </button>
                        </form>
                        <form method="GET" action="{{ route('comments.edit', ['comment' => $comment->id]) }}">
                            <button type="submit"
                                    class="focus:outline-none text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-xs px-3 py-1 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                                Edytuj
                            </button>
                        </form>
                    </div>

                @endif
            </div>
        @endforeach

        <div id="modal-window" class="modal">
            <!-- Zawartość modala -->
            <div class="modal-content">

                <div
                    class="bg-white rounded fixed inset-x-0 top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-gray-200 dark:bg-gray-900 px-5 pb-5 w-1/3">
                    <div class="flex pt-2 w-full justify-between shrink-0">
                        <h1 class="font-semibold text-2xl">Edytuj komentarz</h1>
                        <span class="close text-gray-800">&times;</span>
                    </div>

                    <form method="POST" id="commentForm"
                          action="{{ route('comments.update', ['comment' => $comment->id]) }}">
                        @csrf
                        @method('PUT')
                        <input type="hidden" name="commentId" id="commentId">
                        <input type="text" name="commentTitle" value="{{ $comment->tytul }}">
                        <textarea
                            class="block mb-3 p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            name="commentText">{{ $comment->tresc }}</textarea>
                        <button
                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800"
                            type="submit">Zapisz zmiany
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <div class="py-6">

            <h3 class="text-3xl font-semibold pb-3 dark:text-gray-300">Dodaj komentarz</h3>
            <form method="POST" action="{{ route('comments.store') }}">
                @csrf
                <input type="hidden"
                       class="mb-2 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                       name="author_id" value="{{ $author->id }}">
                <input type="text"
                       class="mb-2 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                       name="title" placeholder="Tytuł komentarza">
                <textarea name="comment" rows="4"
                          class="block mb-3 p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                          placeholder="Twój komentarz"></textarea>
                <button type="submit"
                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
                    Dodaj komentarz
                </button>
            </form>
        </div>

    </div>
@endsection
