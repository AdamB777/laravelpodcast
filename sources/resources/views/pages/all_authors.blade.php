@extends('layouts.app')

@section('content')
    <div class="bg-gray-200 dark:dark:bg-gray-900 mt-24 md:mt-36 2xl:mt-24 px-5 pb-5">
        <h1 class="text-3xl text-center md:text-left font-semibold mb-10 dark:text-gray-300">Lista autorów</h1>

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left text-gray-800 dark:text-gray-300">
                <thead class="text-gray-700 uppercase bg-gray-100 dark:bg-gray-700 dark:text-gray-400">

                <tr>
                    <th class="px-6 py-3 w-[175px]">Miniaturka</th>
                    <th class="px-6 py-3">Autor</th>
                </tr>
            </thead>
            <tbody>
                @foreach($authors as $author)
                    <tr class="bg-white border-b hover:bg-gray-50 hover:text-gray-700 hover:underline dark:hover:text-gray-100 dark:bg-gray-800 hover:dark:bg-slate-800 dark:border-gray-700">
                        <td class="px-6 py-3 w-fit">
                            <img src="./images/authors/{{ $author->zdjecieAutora }}.jpg" alt="Miniaturka autora" class="object-cover">
                        </td>
                        <td class="px-6 py-3"><a class="text-2xl font-bold tracking-wide" href="{{ route('author.show', $author->id) }}">{{ $author->imieAutora }} {{ $author->nazwiskoAutora }}</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
