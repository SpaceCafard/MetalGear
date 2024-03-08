@extends('layouts.master')
@section('content')
    <x-app-layout>
        @if(session()->has('info'))
            <div class="notification is-success">
                {{ session('info') }}
            </div>
        @endif
            @if(session()->has('danger'))
                <div class="notification is-warning">
                    {{ session('danger') }}
                </div>
            @endif

        <div class="card">
            <header class="card-header">
                <p class="card-header-title">Allégeance de la Saga Metal Gear</p>
                <div class="col-lg-1">
                    <a class="button is-info" href="{{ route('createCat') }}">Ajouter</a>
                </div>
            </header>
            <div class="card-content">
                <div class="content">
                    <table class="table is-hoverable">
                        <thead>
                        <tr>
                            <th>Nom de Code</th>
                            <th>Identité</th>
                            <th>Histoire</th>

                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($allegeances as $allegeance)
                            <tr >
                                <td><strong><img src="{{ URL::to($allegeance->LOGO) }}" width="300px" height="300px"/></strong></td>
                                <td><strong>{{ $allegeance->nom_allege }}</strong></td>
                                <td><strong>{{ $allegeance->description }}</strong></td>
                                <td>
                                    <form action="{{ url('allegeance/'. $allegeance->id) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <a class="button is-primary" href="{{ url('allegeance/'. $allegeance->id) }}">Voir</a>
                                        <a class="button is-warning" href="{{ url('allegeance/'. $allegeance->id .'/editCat') }}">Modifier</a>
                                        <button type="submit" class="button is-danger">Neutraliser</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </x-app-layout>
@endsection


