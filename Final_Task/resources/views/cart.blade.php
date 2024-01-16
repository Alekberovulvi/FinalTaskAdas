@extends("layouts.master")

@section("title", 'Cart')


@section("content")
<section class="breadcrumb-section">
    <h2 class="sr-only">Site Breadcrumb</h2>
    <div class="container">
        <div class="breadcrumb-contents">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('client.index')}}">Home</a></li>
                    <li class="breadcrumb-item active">Cart</li>
                </ol>
            </nav>
        </div>
    </div>
</section>

<main class="cart-page-main-block inner-page-sec-padding-bottom">
    <div class="cart_area cart-area-padding  ">
        <div class="container">
            <div class="page-section-title">
                <h1>Shopping Cart</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <form action="#" class="">
                        <!-- Cart Table -->
                        <form action="" method="post" class="">
                            @csrf
                            <div class="cart-table table-responsive mb--40">
                                <table class="table">
                                    <!-- Head Row -->
                                    <thead>
                                        <tr>
                                            <th class="pro-remove"></th>
                                            <th class="pro-thumbnail">Image</th>
                                            <th class="pro-title">Product</th>
                                            <th class="pro-price">Price</th>
                                            <th class="pro-quantity">Quantity</th>
                                            <th class="pro-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Product Row -->
                                        @foreach($cartItems as $cartItem)
                                        <tr>
                                            <td class="pro-remove"><a href="#"><i class="far fa-trash-alt"></i></a>
                                            </td>
                                            <td class="pro-thumbnail"><a href="#"><img src="{{asset($cartItem->options['image'])}}" alt="Product"></a></td>
                                            <td class="pro-title"><a href="#">{{ $cartItem->name }}</a></td>
                                            <td class=" pro-price"><span>₼{{ $cartItem->price }}</span></td>
                                            <td class="pro-quantity">
                                                <div class="pro-qty">
                                                    <div class="count-input-block">
                                                        <input type="number" class="form-control text-center" value="{{ $cartItem->qty }}">
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="pro-subtotal"><span>₼{{ $cartItem->price * $cartItem->qty }}</span></td>
                                        </tr>
                                        <!-- Product Row -->
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    <div class="cart-section-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12 d-flex">
                    <div class="cart-summary">
                        <div class="cart-summary-wrap">
                            <h4><span>Cart Summary</span></h4>
                            <h2>Grand Total <span class="text-primary">₼{{ Cart::subtotal()}}</span></h2>
                        </div>
                        <div class="cart-summary-button">
                            <a href="{{ route('client.checkout')}}" class="checkout-btn c-btn btn--primary">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

@endsection
