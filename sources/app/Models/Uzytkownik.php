<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Auth\Authenticatable;  // dodaj to
use Illuminate\Foundation\Auth\Access\Authorizable;

class Uzytkownik extends Model implements AuthenticatableContract
{
    use Authorizable, Authenticatable; // użyj traity Authenticatable

    protected $table = 'uzytkownicy';

    public function comments()
    {
        return $this->hasMany(KomentarzDoAutora::class, 'idUzytkownika');
    }
    public function oceny() {
        return $this->hasMany(Ocena::class, 'idUzytkownika');
    }
}
