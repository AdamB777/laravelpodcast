@extends('layouts.app')
@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif


@section('content')
    <div class="mt-24 md:mt-36 2xl:mt-24">
        <h1 class="text-3xl text-center md:text-left font-bold dark:text-gray-400 tracking-wide mb-10"><i class="fa-sharp fa-regular fa-newspaper mr-3"></i> Nowości ze świata podcastów</h1>
        <div class=" bg-gray-50 dark:bg-gray-800 shadow-lg rounded-lg">
            @foreach($news as $newsItem)
                <div class="flex p-5 hover:bg-gray-125 dark:hover:bg-gray-700 {{ $newsItem != $news->last() ? 'border-b border-gray-500' : 'rounded-b-lg' }} {{ $newsItem == $news->first() ? 'rounded-t-lg' : '' }}">
                    <div class="w-full">
                        <h2 class="text-2xl font-bold dark:text-gray-300 tracking-wide">
                            <a href="{{ route('news.index', $newsItem->id) }}">
                                <i class="fa-solid fa-podcast text-blue-600 mr-5"></i> {{ $newsItem->tytul }}
                            </a>
                        </h2>
                        <p class="text-lg mt-3 pl-12 ml-0.5 pb-5 italic text-gray-600 dark:text-gray-400">{{ $newsItem->tresc }}</p>
                    </div>
                </div>
            @endforeach
        </div>
@endsection

