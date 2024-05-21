<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Katalog podcastów</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <script src="https://kit.fontawesome.com/9daa118c39.js" crossorigin="anonymous"></script>
    <script>
        // On page load or when changing themes, best to add inline in `head` to avoid FOUC
        if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
            document.documentElement.classList.add('dark');
        } else {
            document.documentElement.classList.remove('dark')
        }
    </script>

</head>
<body class="bg-gray-200 dark:dark:bg-gray-900 flex flex-col min-h-screen justify-between">
{{--
<header>
    @include('components.header')
</header>
--}}

    @include('components.navbar')


<main class="container mx-auto mt-5 flex-grow">
    @yield('content')
</main>

<footer class="mt-5">
    @include('components.footer')
</footer>

<script>

    let themeToggle = document.getElementById('theme-toggle');

    // Check if the current theme is dark
    if (localStorage.getItem('color-theme') === 'dark') {
        themeToggle.style.left = 'calc(100% - 2em)'; // Move the button to the right
    }

    themeToggle.addEventListener('click', function() {
        if (this.style.left === '0px') {
            this.style.left = 'calc(100% - 2em)'; // Assuming button width is roughly '2em'
        } else {
            this.style.left = '0px';
        }
    });

    let themeToggleDarkIcon = document.getElementById('theme-toggle-dark-icon');
    let themeToggleLightIcon = document.getElementById('theme-toggle-light-icon');

    // Change the icons inside the button based on previous settings
    if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
        themeToggleLightIcon.classList.remove('hidden');
    } else {
        themeToggleDarkIcon.classList.remove('hidden');
    }

    let themeToggleBtn = document.getElementById('theme-toggle');

    themeToggleBtn.addEventListener('click', function() {
        // toggle icons inside button
        themeToggleDarkIcon.classList.toggle('hidden');
        themeToggleLightIcon.classList.toggle('hidden');

        // if set via local storage previously
        if (localStorage.getItem('color-theme')) {
            if (localStorage.getItem('color-theme') === 'light') {
                document.documentElement.classList.add('dark');
                localStorage.setItem('color-theme', 'dark');
            } else {
                document.documentElement.classList.remove('dark');
                localStorage.setItem('color-theme', 'light');
            }

            // if NOT set via local storage previously
        } else {
            if (document.documentElement.classList.contains('dark')) {
                document.documentElement.classList.remove('dark');
                localStorage.setItem('color-theme', 'light');
            } else {
                document.documentElement.classList.add('dark');
                localStorage.setItem('color-theme', 'dark');
            }
        }
    });

    document.addEventListener("DOMContentLoaded", function(){
        let toggleButton = document.querySelector('[data-collapse-toggle="navbar-hamburger"]');
        let navbarMenu = document.getElementById('navbar-hamburger');

        toggleButton.addEventListener('click', function() {
            navbarMenu.classList.toggle('hidden');
            let expanded = this.getAttribute('aria-expanded') === 'true' || false;
            this.setAttribute('aria-expanded', !expanded);
        });
    });

</script>
</body>
</html>
