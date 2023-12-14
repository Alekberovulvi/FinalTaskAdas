<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <link rel="stylesheet" href="{{ asset('back/reset/assets/css/style1.css') }}">
    <script src="{{ asset('back/reset/assets/js/script1.js') }}"></script>
</head>

<body>
    <header>
        <nav class="navbar">
            <div class="items" id="items">
                <ul>
                    <a href="{{ route('client.login')}}" style="text-decoration:none;"id="btn">Giriş</a>
                </ul>
            </div>
        </nav>
    </header>

    <section>
        <form action="">
            <div class="container">
                <h1 id="heading" class="heading2">Parolun Sıfırlanması</h1>
                <div id="v1">
                    <div class="enter">
                        <h2 class="heading2">Yeni Parol</h2>
                        <input type="password" name="" id="password">
                    </div>
                    <div class="renter">
                        <h2 class="heading2">Parolu yenidən daxil edin</h2>
                        <input type="password" name="" id="rpassword"> <br>
                        <p id="err"></p>
                    </div>
                </div>
                <div class="button">
                    <button class="reset" onclick="Function()"><a id="bt" href="#">Parolu Dəyiş</a></button>
                </div>
            </div>
        </form>
    </section>

    

</body>

</html>