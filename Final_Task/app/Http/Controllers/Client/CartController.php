<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductsImg;
use Gloudemans\Shoppingcart\Facades\Cart;

class CartController extends Controller
{
    public function index()
    {
        $cartItems = Cart::content();
        return view('cart', ['cartItems' => $cartItems]);
    }

    public function add($id)
    {
        $product = ProductsImg::where('id', $id)->first();
        Cart::add(['id' => '1', 'name' => $product->title, 'qty' => 1, 'price' => $product->price, 'weight' => 550, 'options' => ['size' => 'large', 'image' => $product->img]]);
        return redirect()->back();
    }

    public function remove($id)
    {
        Cart::remove($id);
        return redirect()->back();
    }

    public function addtoCart(Request $request, $id)
    {
        $cart = Cart::content();
        $product = ProductsImg::where('id', $id)->first();
        $productName = $product->title;
        $newQty = (int)$request->qty;
        $rowId = $cart->search(function ($cartItem, $rowId) use ($productName, &$newQty) {
            if ($cartItem->name === $productName) {
                $newQty += $cartItem->qty;
            }
            return $cartItem->name === $productName;
        });
        if ($rowId) {
            Cart::update($rowId, $newQty);
        } else {
            Cart::add(['id' => '1', 'name' => $product->title, 'qty' => 1, 'price' => $product->price, 'weight' => 550, 'options' => ['size' => 'large', 'image' => $product->img]]);
        }
        return redirect()->back();
    }
}
