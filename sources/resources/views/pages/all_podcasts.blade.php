@extends('layouts.app')

@section('content')
    <div class="bg-gray-200 dark:dark:bg-gray-900 mt-24 md:mt-36 2xl:mt-24 px-5 pb-5">
        <h1 class="text-3xl text-center md:text-left font-semibold mb-10 dark:text-gray-300">Lista podcastów</h1>

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left text-gray-800 dark:text-gray-300">
                <thead class="text-gray-700 uppercase bg-gray-100 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th class="px-6 py-3 w-auto">Miniaturka</th>
                    <th class="px-6 py-3 w-1/2 ml-4">Tytuł</th>
                    <th class="hidden md:flex items-center px-6 py-3 h-max w-full">Autor</th>
                </tr>
                </thead>
                <tbody>
                @foreach($podcasts as $podcast)
                    <tr class="bg-white border-b hover:bg-gray-50 hover:text-gray-700 dark:hover:text-gray-100 dark:bg-gray-800 hover:dark:bg-slate-800 dark:border-gray-700">
                        <td class="px-6 py-3 min-w-[128px] max-w-[125px] w-auto">
                            <img src="./images/podcasts_logo/{{ $podcast->zdjeciePodcastu }}.jpg"
                                 alt="Miniaturka podcastu" class="object-cover">
                        </td>

                        <td class="px-6 py-3 w-1/2">
                            <a class="text-2xl font-bold tracking-wide" href={{ route('podcast.show', $podcast->id) }}>{{ $podcast->tytul }}</a>
                            <div class="flex md:hidden">
                                <span class="text-lg italic">{{ $podcast->author->imieAutora }} {{ $podcast->author->nazwiskoAutora }}</span>
                            </div>
                        </td>
                        <td class="hidden md:flex px-6 py-12 my-auto w-full">
                            <span class="flex-shrink-0 inset-0 py-4 text-lg italic">{{ $podcast->author->imieAutora }} {{ $podcast->author->nazwiskoAutora }}</span>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
