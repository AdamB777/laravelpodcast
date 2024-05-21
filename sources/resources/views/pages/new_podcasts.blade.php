@extends('layouts.app')

@section('content')
    <div class="mt-24 md:mt-36 2xl:mt-24">
        <h1 class="text-3xl text-center md:text-left font-semibold mb-10 dark:text-gray-300">Nowe podcasty</h1>

        @foreach($podcasts as $podcast)
            <div class="flex mb-4 bg-white rounded-lg shadow dark:border dark:border-gray-700 bg-gray-50 dark:bg-gray-800 hover:bg-gray-125 dark:hover:bg-gray-700 p-5 shadow rounded ">
                <div class="min-w-[175px] max-w-[175px]">
                    <!-- Miniaturka - należy podać URL do obrazka w zmiennej $podcast->thumbnail_url -->
                    <img src="./images/podcasts_logo/{{ $podcast->zdjeciePodcastu }}.jpg" alt="Miniaturka podcastu" class="object-cover">
                </div>
                <div class="w-auto sm:w-max ml-8">
                    <!-- Nagłówek i opis - należy podać wartości z odpowiednich pól w zmiennej $podcast -->
                    <h2 class="text-2xl font-bold dark:text-gray-300 tracking-wide">
                        <a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->tytul }}</a>
                    </h2>
                    <p class="text-lg mt-3 dark:text-gray-400">{{ $podcast->description }}</p>
                    <!-- Wyświetlenie imienia i nazwiska autora -->
                    <p class="text-lg mt-3 dark:text-gray-400">{{ $podcast->author->imieAutora }} {{ $podcast->author->nazwiskoAutora }}</p>
                </div>
            </div>
        @endforeach
    </div>
@endsection
