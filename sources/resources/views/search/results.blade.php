@extends('layouts.app')

@section('content')

    <div class="bg-gray-200 dark:dark:bg-gray-900 mt-24 px-5 pb-5">
        <h1 class="text-3xl font-semibold mb-10 dark:text-gray-300">Wyszukiwanie</h1>


    @if ($results['autorzy']->isNotEmpty())
        <h2>Wyniki wyszukiwania autorów:</h2>
        <ul>
            @foreach ($results['autorzy'] as $autor)
                <li><a href="{{ route('author.show', $autor->id) }}">{{ $autor->imieAutora }} {{ $autor->nazwiskoAutora }}</a></li>
            @endforeach
        </ul>
    @endif

    @if ($results['podcasty']->isNotEmpty())
        <h2>Wyniki wyszukiwania podcastów:</h2>
        <ul>
            @foreach ($results['podcasty'] as $podcast)
                <li><a href="{{ route('podcast.show', $podcast->id) }}">{{ $podcast->tytul }}</a></li>
            @endforeach
        </ul>
    @endif

    @if ($results['autorzy']->isEmpty() && $results['podcasty']->isEmpty())
        <p>Brak wyników wyszukiwania</p>
    @endif

    <a href="{{ route('news.index') }}"><button type="button" class="focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-medium rounded-lg text-sm px-5 py-2.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900">Przejdź do strony głównej</button></a>
</div>
@endsection
