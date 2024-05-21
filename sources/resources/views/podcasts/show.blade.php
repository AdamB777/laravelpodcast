@extends('layouts.app')

@section('content')
    <div class="bg-white p-5 shadow rounded">
        <h1 class="mb-4">{{ $podcast->title }}</h1>

        <!-- Zdjęcie na 100% szerokości kontenera -->
        <img src="{{ $podcast->thumbnail_url }}" alt="Zdjęcie podcastu" class="w-full mb-4">

        <!-- Opis -->
        <p class="mb-4">{{ $podcast->description }}</p>

        <!-- Komponent komentarzy - przykład -->
        @include('components.comments', ['comments' => $podcast->comments])
    </div>
@endsection
