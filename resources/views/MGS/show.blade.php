@extends('layouts.master')
@section('content')
    <x-app-layout>
    <div class="card">
        <header class="card-header">
            <p class="card-header-title">Nom de Code : {{ $personnage->nom_perso }}</p>
        </header>
        <div class="content">
            <p>Identité : {{ $personnage->prenom_perso }}</p>
            <p>Nationalité : {{ $personnage->nationalite }}</p>
            <p>Allégeance : {{ $allegeance}}</p>
            <p>Situation: {{ $personnage->etat }}</p>
        </div>
        <a class="button is-primary"
           href="{{ route('index')}}">Revenir à la liste</a>
    </div>
</x-app-layout>
@endsection

