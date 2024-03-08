@extends('layouts.master')
@section('content')
    <x-app-layout>
    @if(session()->has('info'))
        <div class="notification is-success">
            {{ session('info') }}
        </div>
    @endif
    <div class="card">
        <header class="card-header">
            <p class="card-header-title">Personnage de la Saga Metal Gear</p>
            <div class="select">
                <select onchange="window.location.href = this.value">
                    <option value="{{ route('personnages.index') }}" @unless($slug)  selected @endunless>Toutes catégories
                    </option>
                    @foreach($allegeances as $allegeance)
                        <option value="{{ route('personnages.allegeance', $allegeance->slug) }}" {{ $slug == $allegeance->slug ? 'selected' : '' }}>{{ $allegeance->slug }}</option>
                    @endforeach
                </select>
            </div>
            <a class="button is-info" href="{{ route('personnages.create') }}">Créer une fiche</a>
        </header>

        <div class="card-content">
            <div class="content">

                @foreach($allegeances as $allegeance)
                    @if($allegeance->slug==$slug)
                        <div class="desc">
                            <div class="one"><img class="logo" src="{{ URL::to($allegeance->LOGO) }}" /></div>
                            <div><p>{{ $allegeance->description }}</p></div>
                        </div>
                        @break
                    @else
                        @continue
                    @endif
                @endforeach

            </div>
            <div class="content">
                <table class="table is-hoverable">
                    <thead>
                    <tr>
                        <th>Nom de Code</th>
                        <th>Identité</th>
                        <th>Nationalité</th>
                        <th>Allégeance</th>
                        <th>Etat</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($personnages as $personnage)
                        <tr @if($personnage->deleted_at) class="has-background-grey-lighter" @endif>
                            <td><strong>{{ $personnage->nom_perso }}</strong></td>
                            <td><strong>{{ $personnage->prenom_perso }}</strong></td>
                            <td><strong>{{ $personnage->nationalite }}</strong></td>
                            <td><strong>{{ $personnage->allegeance->slug }}</strong></td>
                            <td><strong>{{ $personnage->etat }}</strong></td>
                            <td>
                                @if($personnage->deleted_at)
                                    <form action="{{ route('personnages.restore', $personnage->id) }}" method="post">
                                        @csrf
                                        @method('PUT')
                                        <button class="button is-primary" type="submit">Relacher</button>
                                    </form>
                                @else
                                    <a class="button is-primary"
                                       href="{{ route('personnages.show', $personnage->id) }}">Voir</a>
                                @endif
                                    @if($personnage->deleted_at)
                                    @else
                                        <a class="button is-warning"
                                           href="{{ route('personnages.edit', $personnage->id) }}">Modifier</a>
                                    @endif
                                <form action="{{ route($personnage->deleted_at? 'personnages.force.destroy' : 'personnages.destroy', $personnage->id) }}" method="post">
                                    @if($personnage->deleted_at)
                                        @csrf
                                        @method('DELETE')
                                        <button class="button is-danger" type="submit">Liquider</button>
                                    @else
                                        @csrf
                                        @method('DELETE')
                                        <button class="button is-danger" type="submit">Capturer</button>
                                    @endif
                                </form>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <footer class="card-footer is-centered">
            {{ $personnages->links() }}
        </footer>


    </div>
        </x-app-layout>
@endsection


