@extends('layouts.app')

@section('content')
    <div class="mt-24 md:mt-36 2xl:mt-24">
        <h1 class="text-3xl text-center md:text-left font-semibold mb-10 dark:text-gray-300">Nowi autorzy</h1>

        @foreach($authors as $author)
            <div class="flex mb-4 bg-white rounded-lg items-center shadow dark:border dark:border-gray-700 bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 hover:bg-gray-125 p-5 shadow rounded ">
                <div class="min-w-[175px] max-w-[175px]">
                    <!-- Miniaturka - należy podać URL do obrazka w zmiennej $author->thumbnail_url -->
                    <img src="./images/authors/{{ $author->zdjecieAutora }}.jpg" alt="Miniaturka autora" class="object-cover">
                </div>
                <div class="w-auto sm:w-max ml-8">
                    <!-- Nagłówek i opis - należy podać wartości z odpowiednich pól w zmiennej $author -->
                    <h2 class="text-2xl font-bold dark:text-gray-300 tracking-wide">
                        <a href="{{ route('author.show', $author->id) }}">{{ $author->imieAutora }} {{ $author->nazwiskoAutora }}</a>
                    </h2>
                    <p class="text-lg mt-3 dark:text-gray-400">{{ $author->opisAutora }}</p>
                </div>
            </div>
        @endforeach
    </div>
@endsection
