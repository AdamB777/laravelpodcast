<?php

use App\Http\Controllers\AllAuthorsController;
use App\Http\Controllers\AllPodcastsController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\KomentarzDoAutoraController;
use App\Http\Controllers\KomentarzDoPodcastuController;
use App\Http\Controllers\NewAuthorsController;
use App\Http\Controllers\NewPodcastsController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PodcastController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\OcenaController;
use App\Models\KomentarzDoPodcastu;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [NewsController::class, 'index'])->name('news.index');

Route::middleware('auth')->group(function () {
    Route::post('/oceny', [OcenaController::class, 'store'])->name('ocena.store');
    Route::get('/news', [NewsController::class, 'index'])->name('pages.news');
    Route::get('/nowe-podcasty', [NewPodcastsController::class, 'index'])->name('new_podcasts.index');
    Route::get('/lista-autorow', [AllAuthorsController::class, 'index'])->name('all_authors');
    Route::get('/author/{id}', [AuthorController::class, 'show'])->name('author.show');
    Route::get('/lista', [AllPodcastsController::class, 'index'])->name('all_podcasts');
    Route::get('/podcast/{id}', [PodcastController::class, 'show'])->name('podcast.show');
    Route::get('/commentsp/{podcast_comment}/edit', [KomentarzDoPodcastuController::class, 'edit'])->name('commentsp.edit');
    Route::get('/nowi-autorzy', [NewAuthorsController::class, 'index'])->name('new_authors.index');
    Route::get('/wyszukaj', [SearchController::class, 'search'])->name('search');

    Route::resource('comments', KomentarzDoAutoraController::class);
    Route::post('/comments', [KomentarzDoAutoraController::class, 'store'])->name('comments.store');

    Route::resource('podcast-comments', KomentarzDoPodcastuController::class)->names([
        'index' => 'commentsp.index',
        'create' => 'commentsp.create',
        'store' => 'commentsp.store',
 'show' => 'commentsp.show',
        'edit' => 'commentsp.edit',
        'update' => 'commentsp.update',
        'destroy' => 'commentsp.destroy',
    ]);
});


// REJESTRACJA

Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);

// LOGOWANIE
Route::get('login',[LoginController::class  ,'showLoginForm'])->name('login');
Route::post('login',[LoginController::class   ,'login']);
Route::post('logout', [LoginController::class  ,'logout'])->name('logout');

