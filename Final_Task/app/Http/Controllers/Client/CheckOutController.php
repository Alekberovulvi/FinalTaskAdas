<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Disposal;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CheckOutController extends Controller
{
     public function index(){
        $cartItems = Cart::content();
        return view('checkout', ['cartItems' => $cartItems]);
    }

    public function successfull(Request $request)
    {
        $request->validate([
            'fname' => 'required',
            'lname' => 'required',
            'cname' => 'nullable',
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'city' => 'required',
            'state' => 'required',
            'code' => 'nullable',
        ]);


        $carts = Cart::content();
        $disposal = new Disposal();
        $disposal->user_id = auth()->user()->id;
        $disposal->total = Cart::subtotal();
        $disposal->save();

        Cart::destroy();


        return view('successfull', compact('disposal','carts'))->with('success', 'Sifariş uğurla yerinə yetirildi!');
    }


}
