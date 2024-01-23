@extends("layouts.master")

@section("title", 'ChekOut')


@section("content")
<section class="breadcrumb-section">
    <h2 class="sr-only">Site Breadcrumb</h2>
    <div class="container">
        <div class="breadcrumb-contents">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ route('client.index')}}">Home</a></li>
                    <li class="breadcrumb-item active">Checkout</li>
                </ol>
            </nav>
        </div>
    </div>
</section>
<main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Checkout Form s-->
                <form action="" class="checkout-form">
                    <div class="row row-40">
                        <div class="col-12">
                            <div class="checkout-slidedown-box" id="quick-login">
                                <div action="./">
                                    <div class="quick-login-form">
                                        <p>If you have shopped with us before, please enter your details in the
                                            boxes below. If you are a new
                                            customer
                                            please
                                            proceed to the Billing & Shipping section.</p>
                                        <div class="form-group">
                                            <label for="quick-user">Username or email *</label>
                                            <input type="text" placeholder="" id="quick-user">
                                        </div>
                                        <div class="form-group">
                                            <label for="quick-pass">Password *</label>
                                            <input type="text" placeholder="" id="quick-pass">
                                        </div>
                                        <div class="form-group">
                                            <div class="d-flex align-items-center flex-wrap">
                                                <a href="#" class="btn btn-outlined   mr-3">Login</a>
                                                <div class="d-inline-flex align-items-center">
                                                    <input type="checkbox" id="accept_terms" class="mb-0 mr-1">
                                                    <label for="accept_terms" class="mb-0">I’ve read and accept
                                                        the terms &amp; conditions</label>
                                                </div>
                                            </div>
                                            <p><a href="javascript:" class="pass-lost mt-3">Lost your
                                                    password?</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 mb--20">
                            <form action="{{ route('client.placeOrder') }}" method="post" class="checkout-form">
                                @csrf
                                <div id="billing-form" class="mb-40">
                                    <h4 class="checkout-title">Billing Address</h4>
                                    <div class="row">
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>First Name*</label>
                                            <input type="text" placeholder="First Name" name="fname" required>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>Last Name*</label>
                                            <input type="text" placeholder="Last Name" name="lname" required>
                                        </div>
                                        <div class="col-12 mb--20">
                                            <label>Company Name</label>
                                            <input type="text" placeholder="Company Name" name="cname" required>
                                        </div>
                                        <div class="col-12 col-12 mb--20">
                                            <label>Country*</label>
                                            <select class="nice-select">
                                                <option>Azərbaycan</option>
                                                <option>Russia</option>
                                                <option>English</option>
                                                <option>Turkey</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>Email Address*</label>
                                            <input type="email" placeholder="Email Address" name="email" required>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>Phone no*</label>
                                            <input type="text" placeholder="Phone number" name="phone" required>
                                        </div>
                                        <div class="col-12 mb--20">
                                            <label>Address*</label>
                                            <input type="text" placeholder="Address line 1" name="address" required>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>Town/City*</label>
                                            <input type="text" placeholder="Town/City" name="city" required>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>State*</label>
                                            <input type="text" placeholder="State" name="state" required>
                                        </div>
                                        <div class="col-md-6 col-12 mb--20">
                                            <label>Zip Code*</label>
                                            <input type="text" placeholder="Zip Code" name="code">
                                        </div>
                                        <div class="col-12 mb--20 ">
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="row">
                                <!-- Cart Total -->
                                <div class="col-12">
                                    <div class="checkout-cart-total">
                                        <h2 class="checkout-title">YOUR ORDER</h2>
                                        <h4>Product <span>Total</span></h4>
                                        <ul>
                                            @foreach($cartItems as $cartitem)
                                            <li><span class="left">{{ $cartitem->name}} X {{ $cartitem->qty}}</span> <span class="right">${{ $cartitem->qty * $cartitem->price}}</span></li>
                                            @endforeach
                                        </ul>
                                        <h4>Grand Total <span>${{ Cart::subtotal()}}</span></h4>
                                        <button class="place-order w-100">Place order</button>
                </form>
            </div>
        </div>
    </div>
    </div>
    </div>
    </form>
    </div>
    </div>
    </div>
</main>
</div>
@endsection
