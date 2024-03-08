<?php

namespace App\Http\Controllers;
use App\Models\{Personnage, Allegeance};
use Illuminate\Http\Request;

class AllegeanceController
{
    public function indexCat()
    {
        $allegeances = Allegeance::all();
        return view('MGS.indexCat', compact('allegeances'));
    }

    public function createCat()
    {
        $allegeances = Allegeance::all();
        return view('MGS.createCat', compact('allegeances'));
    }


    public function storeCat(Request $request)
    {
        $request->validate([
            'nom_allege' => 'required',
            'description'=> 'required',
            'slug',
            'LOGO' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

        ]);

        $imageName = time().'.'.$request->LOGO->extension();
        $request->LOGO->move(public_path('image'), $imageName);



        $allegeances = new Allegeance([
            'nom_allege' => $request->get('nom_allege'),
            'slug' => $request->get('nom_allege'),
            'description' => $request->get('description'),
            'LOGO' => ("/image/".$imageName),
        ]);




        $allegeances->save();
        return redirect('/indexCat')->with('info', 'Allegeance ajouté avec succès');
    }

    public function editCat($id)
    {
        $allegeance = Allegeance::query()->findOrFail($id);
        return view('MGS.editCat', compact('allegeance'));
    }

    public function updateCat(Request $request, $id)
    {
        $request->validate([

            'nom_allege',
            'description',
            'slug',
            'LOGO' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',

        ]);
        if($request->has('LOGO')){
        $imageName = time().'.'.$request->LOGO->extension(NULL);
        $request->LOGO->move(public_path('image'), $imageName);
        }


        $allegeance = Allegeance::query()->findOrFail($id);
        $allegeance->nom_allege = $request->get('nom_allege');
        $allegeance->slug = $request->get('nom_allege');
        $allegeance->description = $request->get('description');
        if($request->has('LOGO')){
        $allegeance->LOGO = ("/image/".$imageName);
        }

        $allegeance->update();

        return redirect('/indexCat')->with('success', 'Allegeance modifié avec succès');
    }

    public function showCat($id)
    {
        $allegeance = Allegeance::query()->findOrFail($id);
        return view('MGS.showCat', compact('allegeance'));
    }

    public function destroyCat($id)
    {
            $personnages= Personnage::all();
            $allegeances = Allegeance::query()->findOrFail($id);
            foreach($personnages as $personnage)
            {
                if($personnage->allegeance_id==$id)
                {
                    return back()->with('danger', "Impossible car des personnages sont toujours associé à cette organisation, Liquidé d'abord les membres de l'organisation pour en entreprendre le demantelement ");
                }
            }
            $allegeances->delete();

            return back()->with('info', 'Allégeance neutralisé avec succès');
    }

}
