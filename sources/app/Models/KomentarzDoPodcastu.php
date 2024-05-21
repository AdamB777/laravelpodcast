<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KomentarzDoPodcastu extends Model
{
    use HasFactory;
    protected $table = 'komentarzedopodcastow';
    protected $guarded = ['_token'];

    // Założmy, że pole idAutora jest kluczem obcym odwołującym się do autora
    public function author()
    {
        return $this->belongsTo(Podcast::class, 'idPodcastu');
    }

    // Założmy, że pole idUzytkownika jest kluczem obcym odwołującym się do użytkownika
    public function user()
    {
        return $this->belongsTo(Uzytkownik::class, 'idUzytkownika');
    }
}
