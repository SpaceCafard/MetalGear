<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Scripts -->

        @vite(['resources/css/app.css', 'resources/js/app.js'])

        <!-- Styles -->
        @livewireStyles

    </head>
    <style>
        div.desc{
            align-content: center;
            display: flex;

        }
        div.one{

            align-content: center;
            padding-right: 15px ;
            width: 1000px

        }
        img.logo{
            height: 270px;
            width: 270px;
        }

        body{
            background: url({{ asset('image/Fond2.jpeg') }});
            background-size : cover;
        }
        h1{
            text-align: center;
            font-size: 2em;
        }
        h2{
            font-size: 1.5em;
            padding-left: 50px;
        }
        p.pres{
            font-size: 1.2em;
            padding: 50px;
        }
        div.l1{
            align-content: center;
            display: flex;
            padding-left: 80px;
            padding-right: 50px;

        }
        div.l2{
            align-content: center;
            display: flex;
            padding-left: 60px;
            padding-right: 50px;

        }
        div.mlogo{
            padding-left: 50px;
            padding-right: 50px;

        }
    </style>
    <body class="font-sans antialiased">
        <x-jet-banner />

        <div class="min-h-screen bg">
            @livewire('navigation-menu')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
        </div>

        @stack('modals')

        @livewireScripts
    </body>
</html>
