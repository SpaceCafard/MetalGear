@extends('layouts.master')
@section('content')
    <x-app-layout>
        <div class="card">
            <header class="card-header">
                <p class="card-header-title">Création d'une Fiche Personnage</p>
            </header>
            <div class="card-content">
                <div class="content">
                    <form action="{{ route('storeCat') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="field">
                            <label class="label">Nom de l'Organisation:</label>
                            <div class="control">
                                <input class="input" type="text" id="nom_allege" name="nom_allege" value="{{ old('nom_allege') }}" placeholder="Nom de Code du Personnage">
                            </div>
                            @error('nom_allege')
                            <p class="help is-danger">{{ $message }}</p>
                            @enderror
                        </div>

                        <div class="field">
                            <label class="label">Histoire:</label>
                            <div class="control">
                                <textarea id="description" name="description" rows="10" cols="100">
                                    {{ old('description') }}
                                </textarea>
                            </div>
                            @error('description')
                            <p class="help is-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="field">
                            <label class="label">Insigne:</label>
                            <div class="control">
                                <input type="file" name="LOGO" id="LOGO" class="input">
                            </div>
                            <p>Format : PNG, JPEG ou JPG inferieur à 2Mo</p>
                            @error('LOGO')
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




