@extends('layouts.app')

@section('content')
    <div class="bg-white p-5 shadow rounded">
        <h1 class="text-2xl font-semibold mb-10">Najlepsze podcasty</h1>

        <!-- Zalążek pętli -->
        <!-- W miejsce $podcasts należy podać zmienną z kontrolera przechowującą listę podcastów -->
        <!-- Przykład: $podcasts = Podcast::all() -->

        <!-- Przykładowe wartości -->
        @php
            $podcasts = $podcasts ?? [
                (object)[
                    'id' => 1,
                    'thumbnail_url' => asset('images/sample/image.jpg'),
                    'title' => 'Przykładowy podcast',
                    'description' => 'To jest przykładowy opis podcastu.',
                ],
            ];
        @endphp

        @foreach($podcasts as $podcast)
            <div class="flex mb-4">
                <div class="w-1/4">
                    <!-- Miniaturka - należy podać URL do obrazka w zmiennej $podcast->thumbnail_url -->
                    <img src="{{ $podcast->thumbnail_url }}" alt="Miniaturka podcastu" class="max-h-64">
                </div>
                <div class="w-3/4 ml-4">
                    <!-- Nagłówek i opis - należy podać wartości z odpowiednich pól w zmiennej $podcast -->
                    <h2 class="text-xl">
                        <a href="{{ route('podcast.show', $podcast->id) }}">
                            {{ $podcast->title }}
                        </a>
                    </h2>
                    <p>{{ $podcast->description }}</p>
                </div>
            </div>
        @endforeach
    </div>
@endsection
