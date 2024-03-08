<?php

namespace App\Http\Controllers;
use App\Models\{Personnage, Allegeance};
use Illuminate\Http\Request;

class PersonnageController
{


    public function index($slug = null)
    {
        $query = $slug ? Allegeance::whereSlug($slug)->firstOrFail()->personnages() : Personnage::query();
        $personnages = $query->withTrashed()->oldest('nom_perso')->paginate(6);
        $allegeances = Allegeance::all();
        return view('MGS.index', compact('personnages', 'allegeances','slug'));
    }




    /**
     * Affiche le formulaire de creation d'un chapitre
     */
    public function create()
    {
        $allegeances = Allegeance::all();
        return view('MGS.create', compact('allegeances'));
    }



    /**
     * Enregistre un nouveau chapitre dans la base de données
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom_perso',
            'prenom_perso' ,
            'etat' ,
            'nationalite' ,
            'allegeance_id' => 'required'
        ]);


        $personnages = new personnage([
            'nom_perso' => $request->get('nom_perso'),
            'prenom_perso' => $request->get('prenom_perso'),
            'etat' => $request->get('etat'),
            'nationalite' => $request->get('nationalite'),
            'allegeance_id' => $request->get('allegeance_id')
        ]);


        $personnages->save();
        return redirect('/index')->with('info', 'Personnage ajouté avec succès');
    }


    /**
     * Affiche les détails d'un chapitre
     */

    public function show(Personnage $personnage)
    {
        $allegeance = $personnage->allegeance->slug;

        return view('MGS.show', compact('personnage','allegeance'));
    }



    /**
     * Affiche le formulaire de modification d'un chapitre
     */

    public function edit($id)
    {
        $personnages = Personnage::query()->findOrFail($id);
        $allegeances = Allegeance::all();
        return view('MGS.edit', compact('allegeances','personnages'));
    }


    /**
     * Enregistre la modification dans la base de données
     */
    public function update(Request $request, $id)
    {
        $request->validate([

            'nom_perso' ,
            'prenom_perso',
            'etat',
            'nationalite',
            'allegeance_id'

        ]);

        $personnages = Personnage::query()->findOrFail($id);
        $personnages->nom_perso = $request->get('nom_perso');
        $personnages->prenom_perso = $request->get('prenom_perso');
        $personnages->etat = $request->get('etat');
        $personnages->nationalite = $request->get('nationalite');
        $personnages->allegeance_id = $request->get('allegeance_id');


        $personnages->update();

        return redirect('/index')->with('success', 'Personnages modifié avec succès');

    }


    public function destroy($id)
    {

        $personnages = Personnage::query()->findOrFail($id);
        $personnages->delete();

        return back()->with('info', 'Personnages capturé avec succès');

    }

    public function forceDestroy($id)
    {
        Personnage::withTrashed()->whereId($id)->firstOrFail()->forceDelete();
        return back()->with('info', 'Le Personnage a bien été définitivement liquidé dans la base de données.');
    }

    public function restore($id)
    {
        Personnage::withTrashed()->whereId($id)->firstOrFail()->restore();
        return back()->with('info', 'Le Personnage a bien été relaché.');
    }


}
