@extends('layouts.app')

@section('content')
    <div class="flex-col bg-white rounded w-full md:mx-auto mt-24 md:mt-48 2xl:mt-24 bg-gray-200 dark:bg-gray-800 px-5 pb-5 xl:w-1/2">
        <div class="pt-3 pb-5 w-full justify-between shrink-0">
            <h1 class="font-semibold text-2xl dark:text-gray-300">Edytuj komentarz</h1>
            {{-- <span class="close text-gray-800">&times;</span> --}}
        </div>
        <div>
            <form method="POST" action="{{ route('commentsp.update', ['podcast_comment' => $podcast_comment->id]) }}">
                @csrf
                @method('PUT')
                <input type="text" name="title" value="{{ $podcast_comment->tytul }}" class="mb-5 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"/>
                <textarea name="comment" rows="5" class="block mb-5 p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">{{ $podcast_comment->tresc }}</textarea>
                <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Zapisz zmiany</button>
            </form>
        </div>
    </div>
@endsection
