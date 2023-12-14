<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:700,900" rel="stylesheet">

	<link type="text/css" rel="stylesheet" href="{{ asset('front/404/assets/css/app.css') }}" />

</head>

<body>

	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>404</h1>
				<h2>Page not found</h2>
			</div>
			<a href="{{ route('client.index')}}">Homepage</a>
		</div>
	</div>

</body>

</html>
