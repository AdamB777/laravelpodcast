<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Autor extends Model
{
    use HasFactory;

    protected $table = 'autorzy';

    public function podcasts()
    {
        return $this->hasMany(Podcast::class, 'idPodcastu');
    }
    public function comments()
    {
        return $this->hasMany(KomentarzDoAutora::class, 'idAutora')->orderByDesc('created_at');
    }
    
  
}