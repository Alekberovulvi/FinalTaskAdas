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
                <form action="{{ route('client.successfull') }}" method="post" class="checkout-form">
                    @csrf
                    <div class="row row-40">
                        @if($errors->any())
                        <div class="col-lg-12">
                            <ul>
                                @foreach($errors->all() as $error)

                                <li class="text-danger">{{$error}}</li>

                                @endforeach
                            </ul>
                        </div>
                        @endif
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
                            <div id="billing-form" class="mb-40">
                                <h4 class="checkout-title">Sifariş Ünvanı</h4>
                                <div class="row">
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Adınız*</label>
                                        <input type="text" placeholder="Adınız" name="fname" required>
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Soyadınız*</label>
                                        <input type="text" placeholder="Soyadınız" name="lname" required>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label>Şirkət Adı</label>
                                        <input type="text" placeholder="Şirkət Adı" name="cname">
                                    </div>
                                    <div class="col-12 col-12 mb--20">
                                        <label>Ölkə*</label>
                                        <select class="nice-select">
                                            <option>Azərbaycan</option>
                                            <option>Russia</option>
                                            <option>English</option>
                                            <option>Turkey</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Elektron Poçt Ünvanı*</label>
                                        <input type="email" placeholder="Elektron Poçt Ünvanı" name="email" required>
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Telefon Nömrəniz*</label>
                                        <input type="text" placeholder="Telefon Nömrəniz" name="phone" required>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label>Ünvan*</label>
                                        <input type="text" placeholder="Ünvan" name="address" required>
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Şəhər*</label>
                                        <input type="text" placeholder="Şəhər" name="city" required>
                                    </div>
                                    <div class="col-md-6 col-12 mb--20">
                                        <label>Küçə*</label>
                                        <input type="text" placeholder="Küçə" name="state" required>
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
                                        <h2 class="checkout-title">Sizin Sifarişləriniz</h2>
                                        <h4>Məhsullar <span>Ümumi</span></h4>
                                        <ul>
                                            @foreach($cartItems as $cartitem)
                                            <li><span class="left">{{ $cartitem->name}} X {{ $cartitem->qty}}</span> <span class="right">₼{{ $cartitem->qty * $cartitem->price}}</span></li>
                                            @endforeach
                                        </ul>
                                        <h4>Ümumi Cəm <span>₼{{ Cart::subtotal()}}</span></h4>
                                        <button class="place-order w-100">Sifariş verin</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
    </div>
</main>
</div>
@endsection
