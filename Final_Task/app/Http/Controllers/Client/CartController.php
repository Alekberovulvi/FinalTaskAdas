<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index(){
        $cartItems = session('cart', []);
        return view('cart', ['cartItems' => $cartItems]);
    }

    public function addToCart(Request $request)
    {
        $productId = $request->input('product_id');
        $productName = $request->input('product_name');
        $quantity = $request->input('quantity', 1);
        $price = $request->input('price');

        $cartItems = session('cart', []);

        if(array_key_exists($productId, $cartItems)){
            $cartItems[$productId]['quantity'] += $quantity;
        }else{
            $cartItems[$productId] = [
                'product_id' => $productId,
                'product_name' => $productName,
                'quantity' => $quantity,
                'price' => $price
            ];
        }

        session(['cart' => $cartItems]);

        return redirect()->route('cart.index');
    }

    public function removeFromCart(Request $request)
    {
        $productId = $request->input('product_id');

        $cartItems = session('cart', []);

        if(array_key_exists($productId, $cartItems)){
            unset($cartItems[$productId]);
            session(['cart' => $cartItems]);
        }


        return redirect()->route('cart.index');
    }
}
