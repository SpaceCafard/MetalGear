<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Allegeance extends Model
{
    use HasFactory;
    protected $fillable = ['nom_allege','slug','description','LOGO','id'];
    public function personnages()
    {
        return $this->hasMany(Personnage::class);
    }

}
