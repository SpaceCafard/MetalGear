
<x-app-layout>


    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <h1>Bienvenue</h1>

                <p class="pres">Metal Gear est une série de jeux vidéo développée et éditée par Konami sous la direction du créateur Hideo Kojima, apparue en 1987 avec Metal Gear.
                        C'est une œuvre uchronique du genre techno-thriller. L'intrigue tourne autour d'une arme de destruction massive, le Metal Gear. Les jeux suivent le plus souvent les opérations d'un soldat d'élite (Solid Snake, Naked Snake ou Raiden) qui doit s'infiltrer en terrain ennemi pour contrer une menace terroriste, en usant de sa discrétion et de ses réflexes, et dont la finalité est de détruire le dit Metal Gear
                    L'univers de la série oscille entre réalisme et science-fiction et, bien que comportant des éléments rationnels et très étudiés par les développeurs, l'univers présente aussi des éléments plus fantasques et humoristiques. Les personnages sont généralement des individus peu communs, ne vivant que pour la guerre et ayant une constitution physique hors norme, mais cela n'empêche pas le jeu d'être très profond, en particulier dans le traitement des thèmes abordés (politique, hautes technologies, relations humaines)<br>
                    Ce monde est régis par plusieurs organisations avec des buts, idéologies et méthodes plus ou moins différentes.
                </p>
                <h2>En voici les principales :</h2>
                <br>
                <div class="l1">
                    <div class="mlogo"><a href="{{ url('/allegeance/Fox/personnages') }}"><img src="{{ URL::to('/image/Fox.png') }}" width="100px" height="100px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Xof/personnages') }}"><img src="{{ URL::to('/image/XOF.png') }}" width="100px" height="100px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Diamond Dogs/personnages') }}"><img src="{{ URL::to('/image/DDogs.png') }}" width="160px" height="160px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/FoxHound/personnages') }}"><img src="{{ URL::to('/image/FoxHound.png') }}" width="140px" height="168px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Outer Heaven/personnages') }}"><img src="{{ URL::to('/image/Outer Heaven.png') }}" width="150px" height="150px"/></a></div>
                </div>
                <br>
                <div class="l2">
                    <div class="mlogo"><a href="{{ url('/allegeance/Cobra Unit/personnages') }}"><img src="{{ URL::to('/image/CU.png') }}" width="160px" height="160px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Sons of BigBoss/personnages') }}"><img src="{{ URL::to('/image/SOBB.png') }}" width="120px" height="120px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/The Patriots/personnages') }}"><img src="{{ URL::to('/image/Patriots.png') }}" width="130px" height="130px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Dead Cell/personnages') }}"><img src="{{ URL::to('/image/DC1.png') }}" width="100px" height="120px"/></a></div>
                    <div class="mlogo"><a href="{{ url('/allegeance/Philanthropy/personnages') }}"><img src="{{ URL::to('/image/Philantopy.png') }}" width="160px" height="160px"/></a></div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
