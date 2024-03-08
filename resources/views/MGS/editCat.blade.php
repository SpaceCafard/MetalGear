@extends('layouts.master')
@section('content')
    <x-app-layout>

        <div class="card">
            <header class="card-header">
                <p class="card-header-title">Modification d'une Fiche Allegeance</p>
            </header>
            <div class="card-content">
                <div class="content">
                    <form action="{{ route('allegeance.updateCat', $allegeance->id) }}" method="POST" enctype="multipart/form-data">
                        @method('PATCH')
                        @csrf
                        <div class="field">
                            <label class="label">Nom:</label>
                            <div class="control">
                                <input class="input" type="text" name="nom_allege" value="{{ old('nom_allege', $allegeance->nom_allege) }}" placeholder="Nom de Code du Personnage">
                            </div>
                            @error('nom_allege')
                            <p class="help is-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="field">
                            <label class="label">Nom:</label>
                            <div class="control">
                                <textarea id="description" name="description" rows="10" cols="100">
                                    {{ old('description', $allegeance->description) }}
                                </textarea>
                            </div>
                            @error('description')
                            <p class="help is-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="field">
                            <label class="label">Insigne:</label>
                            <div class="control">
                                <img class="logo" src="{{ URL::to($allegeance->LOGO) }}" /><br>
                                <input type="file" name="LOGO" id="LOGO" class="input" value="{{ old('LOGO', $allegeance->LOGO) }}">
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
    </x-app-layout>     s
@endsection







