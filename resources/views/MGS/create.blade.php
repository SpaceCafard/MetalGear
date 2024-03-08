@extends('layouts.master')
@section('content')
    <x-app-layout>
    <div class="card">
        <header class="card-header">
            <p class="card-header-title">Création d'une Fiche Personnage</p>
        </header>
        <div class="card-content">
            <div class="content">
                <form action="{{ route('personnages.store') }}" method="POST">
                    @csrf
                    <div class="field">
                        <label class="label">Allégeance</label>
                        <div class="select">
                            <select name="allegeance_id">
                                @foreach($allegeances as $allegeance)
                                    <option value="{{ $allegeance->id }}">{{ $allegeance->nom_allege }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Nom de Code:</label>
                        <div class="control">
                            <input class="input" type="text" name="nom_perso" value="{{ old('nom_perso') }}" placeholder="Nom de Code du Personnage">
                        </div>
                        @error('nom_perso')
                        <p class="help is-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="field">
                        <label class="label">Identité:</label>
                        <div class="control">
                            <input class="input" type="text" name="prenom_perso" value="{{ old('prenom_perso') }}" placeholder="Identité Réelle du Personnage">
                        </div>
                        @error('prenom_perso')
                        <p class="help is-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="field">
                        <label class="label">Nationalité:</label>
                        <div class="control">
                            <input class="input" type="text" name="nationalite" value="{{ old('nationalite') }}" placeholder="Nationalité du Personnage">
                        </div>
                        @error('nationalite')
                        <p class="help is-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="field">
                        <label class="label">Situation</label>
                        <div class="control">
                            <input class="input" type="text" name="etat" value="{{ old('etat') }}" placeholder="Situtation du Personnage">
                        </div>
                        @error('etat')
                        <p class="help is-danger">{{ $message }}</p>
                        @enderror
                    </div>

                    <div class="field">
                        <div class="control">
                            <button class="button is-link">Envoyer</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
@endsection



