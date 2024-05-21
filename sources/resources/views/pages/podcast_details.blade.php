@extends('layouts.app')

@section('content')

    <div
        class="mt-24 md:mt-36 2xl:mt-24 mb-4 bg-white rounded-lg shadow dark:border dark:border-gray-700 bg-gray-50 dark:bg-gray-800 px-16 py-7 shadow rounded">
        <h1 class="text-3xl text-center md:text-left font-bold dark:text-gray-300 tracking-wide">{{ $podcasts->imieAutora }} {{ $podcasts->tytul }}</h1>

        <div class="flex flex-col md:flex-row items-center mt-6">
            <div class="mb-6 md:mb-0">
                <img class="max-w-56 max-h-56" src="../images/podcasts_logo/{{ $podcasts->zdjeciePodcastu }}.jpg" alt="Zdjęcie podcastu">
            </div>
            <div class="relative w-full md:w-3/4 px-6 text-lg text-justify md:text-left dark:text-gray-400">{{ $podcasts->opisAutora }}</div>
        </div>

        <div class="flex flex-col items-left mt-4 px-6 md:px-0 text-lg">

            <div class="text-xl text-center md:text-left">
                @for($i = 1; $i <= 5; $i++)
                    @if($i <= round($podcasts->oceny->avg('ocena')))
                        <span class="fa fa-star text-yellow-400"></span>
                    @else
                        <span class="fa fa-star text-gray-400"></span>
                    @endif
                @endfor
            </div>

            <h2 class="text-lg pt-1 text-center md:text-left dark:text-white">Średnia ocena: {{ $podcasts->oceny->avg('ocena') }}

            </h2>

            @if($podcasts->oceny()->where('idUzytkownika', auth()->id())->exists())

                <p class="text-gray-500 text-center md:text-left text-sm italic">Już oceniłeś ten podcast</p>

            @else
            <div class="pt-2 text-center md:text-left flex">
                <form method="POST" action="{{ route('ocena.store') }}">
                    @csrf
                    <input type="hidden" name="podcast_id" value="{{ $podcasts->id }}">
                    <label class="dark:text-white" for="ocena">Dodaj ocenę:</label>
                    <select class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 p-1.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" name="ocena">
                        @for($i = 1; $i <= 5; $i++)
                            <option value="{{ $i }}">{{ $i }}</option>
                        @endfor
                    </select>
                    <button type="submit"
                            class="mt-2 focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-sm rounded-lg text-sm px-3 py-1.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900">
                        Dodaj ocenę
                    </button>
                </form>
            </div>
            @endif

        </div>
    </div>
    <div class="text-lg">
        <h3 class="text-3xl font-semibold mb-6 pt-2 dark:text-gray-300">Komentarze</h3>


        @foreach ($podcasts->comments as $comment)
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
                        <form method="POST" action="{{ route('commentsp.destroy', ['podcast_comment' => $comment->id]) }}">
                            @csrf
                            @method('DELETE')
                            <button type="submit"
                                    class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-xs px-3 py-1 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">
                                Usuń
                            </button>
                        </form>
                        <form method="GET" action="{{ route('commentsp.edit', ['podcast_comment' => $comment->id]) }}">
                            <button type="submit"
                                    class="focus:outline-none text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-xs px-3 py-1 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                                Edytuj
                            </button>
                        </form>
                    </div>

                @endif
            </div>
        @endforeach

        <div class="py-6">

            <h3 class="text-3xl font-semibold pb-3 dark:text-gray-300">Dodaj komentarz</h3>

            <form method="POST" action="{{ route('commentsp.store') }}">
                @csrf
                <input type="hidden" name="podcast_id" value="{{ $podcasts->id }}">
                <input type="text" name="title" placeholder="Tytuł komentarza"
                       class="mb-2 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                >
                <textarea name="comment" placeholder="Twój komentarz"
                          class="block mb-3 p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"

                ></textarea>
                <button type="submit"
                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
                    Dodaj komentarz
                </button>
            </form>
        </div>

    </div>

@endsection
