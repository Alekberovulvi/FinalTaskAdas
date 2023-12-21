<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
     public function login(){
        return view('login');
    }

    public function register(){
        return view('register');
    }

    public function registerPost(Request $request){
        $data = $request->all();
        $data['password'] = Hash::make($request->password);
        $data['c-password'] = Hash::make($request->c-password);
        $user = User::create($data);
        if($user) {
            return redirect()->route('client.login');
        }
        return back()->with('success','mmmm');

    }
}
