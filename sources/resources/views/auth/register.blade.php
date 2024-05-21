@extends('layouts.app')

@section('content')

    <section class="bg-gray-200 dark:bg-gray-900">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">

            <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                        Zarejestruj się
                    </h1>
                    <form method="POST" action="{{ route('register') }}" class="space-y-4 md:space-y-6">
                        @csrf

                        <!-- Name -->
                        <div>
                            <label for="imie" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('Imię') }}</label>
                            <input id="imie" type="text" name="imie" value="{{ old('imie') }}" required autofocus class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('imie') is-invalid @enderror">
                            @error('imie')
                            <div class="text-sm text-red-600">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Surname -->
                        <div>
                            <label for="nazwisko" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('Nazwisko') }}</label>
                            <input id="nazwisko" type="text" name="nazwisko" value="{{ old('nazwisko') }}" required autofocus class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('nazwisko') is-invalid @enderror">
                            @error('nazwisko')
                            <div class="text-sm text-red-600">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Login -->
                        <div>
                            <label for="login" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('Login') }}</label>
                            <input id="login" type="text" name="login" value="{{ old('login') }}" required autofocus class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('login') is-invalid @enderror">
                            @error('login')
                            <div class="text-sm text-red-600">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Email Address -->
                        <div>
                            <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('E-Mail') }}</label>
                            <input id="email" type="email" name="email" value="{{ old('email') }}" required autocomplete="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('email') is-invalid @enderror">
                            @error('email')
                            <div class="text-sm text-red-600">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Password -->
                        <div>
                            <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('Hasło') }}</label>
                            <input id="password" type="password" name="password" required autocomplete="new-password" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 @error('password') is-invalid @enderror">
                            @error('password')
                            <div class="text-sm text-red-600">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Confirm Password -->
                        <div>
                            <label for="password-confirm" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{ __('Potwierdź hasło') }}</label>
                            <input id="password-confirm" type="password" name="password_confirmation" required autocomplete="new-password" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        </div>

                        <button type="submit" class="focus:outline-none text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                            {{ __('Zarejestruj się') }}
                        </button>

                        <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                            Masz już konto? <a href="{{ route('login') }}" class="font-medium text-primary-600 hover:underline dark:text-primary-500">{{ __('Zaloguj się') }}</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>

@endsection
