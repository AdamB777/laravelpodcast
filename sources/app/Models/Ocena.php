<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ocena extends Model
{
    use HasFactory;
    protected $table = 'oceny';

    protected $fillable = ['ocena', 'idPodcastu', 'idUzytkownika'];

    public function podcast() {
        return $this->belongsTo(Podcast::class, 'idPodcastu');
    }

    public function user() {
        return $this->belongsTo(User::class, 'idUzytkownika');
    }
}
