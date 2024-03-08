<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Personnage extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = ['nom_perso','prenom_perso','etat','nationalite','allegeance_id'];
    public function allegeance()
    {
        return $this->belongsTo(Allegeance::class);
    }

}
