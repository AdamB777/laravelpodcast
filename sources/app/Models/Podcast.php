<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Podcast extends Model
{
    use HasFactory;
    protected $table = 'podcasty';
    public function author()
    {
        return $this->belongsTo(Autor::class, 'idAutora');
    }
    public function oceny()
    {
        return $this->hasMany(Ocena::class, 'idPodcastu');
    }
    
    public function comments()
    {
        return $this->hasMany(KomentarzDoPodcastu::class, 'idPodcastu')->orderByDesc('created_at');
    }
}
