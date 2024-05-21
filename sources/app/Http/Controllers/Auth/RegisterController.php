<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Uzytkownik;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RegisterController extends Controller
{
    public function showRegistrationForm()
{
    return view('auth.register');
}

    public function register(Request $request)
    {
        // Validate the request...
        $validatedData = $request->validate([
            'imie' => 'required|max:256',
            'nazwisko' => 'required|max:256',
            'login' => 'required|max:256|unique:uzytkownicy',
            'email' => 'required|max:256|email|unique:uzytkownicy',
            'password' => 'required|min:8',
        ]);

        // Save the user...
        $user = new Uzytkownik;
        $user->imie = $validatedData['imie'];
        $user->nazwisko = $validatedData['nazwisko'];
        $user->login = $validatedData['login'];
        $user->email = $validatedData['email'];
        $user->password = bcrypt($validatedData['password']);
        $user->save();
        // Auth::login($user);

        // // Flash a success message
        // session()->flash('success', 'Rejestracja przebiegła pomyślnie!');
        
        // Redirect the user...
        return redirect()->route('pages.news');
    }
}
