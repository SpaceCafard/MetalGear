@extends('layouts.master')
@section('content')
    <x-app-layout>
        <div class="card">
            <header class="card-header">
                <p class="card-header-title">{{ $allegeance->nom_allege }}</p>
            </header>
            <div class="content">
                <p class="pres">Insigne: <br><img src="{{ URL::to($allegeance->LOGO) }}"/></p>
                <p class="pres">Histoire :<br>{{ $allegeance->description }}</p>

            </div>
            <a class="button is-primary"
               href="{{ route('indexCat')}}">Revenir à la liste</a>
        </div>
        </x-app-layout>
@endsection
