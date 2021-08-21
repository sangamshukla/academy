<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Wallington Academy</title>
	<meta name="Wallington Academy - After School Tutorials" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="{{ asset('frontend/style.css') }}">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;1,700&display=swap" rel="stylesheet">
</head>

<body>
	<div class="nav-container">
		<div class="wrapper-nav">
			<nav class="top-nav">
				<div class="logo">
					<a href="{{ url('/')}}"> <img src="{{ asset('frontend/assets/logo.png') }}" alt="wallington-logo"></a>
				</div>
				<ul class="nav-items">
					<li><a href="classes.html">Classes</a></li>
					<li><a href="packages.html">Packages</a></li>
					<li><a href="elevenplus.html">11+ Exam</a></li>
					<li><a href="study-material.html">Study Material</a></li>
				</ul>
				<ul class="nav-buttons">
					{{-- <li><a class="login" href="{{ url('/student-login')}} ">Welcome {{ auth()->user()->name }}</a></li> --}}
					
					<li><a class="login" href="{{ url('/student-login')}}">Login</a></li>
					<li><a class="reg-button" href="{{ url('/student-register') }}">Register</a></li>
				</ul>
			</nav>
		</div>
	</div>


	<div class="available-courses">
		<div class="available-courses-text">All Available Courses</div>
		<ul class="nav-course">
			<li><a href="#classnein">Class 9</a></li>
			<li><a href="#classten">Class 10</a></li>
			<li><a href="#elevenplus">11+</a></li>
		</ul>
		<div class="card-stack">
			
			@foreach($batches as $batch)
				<div class="card" id="card1">
					<div class="cover">
						<div class="cover-over"></div>
						<img src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
						{{-- <img src="{{ asset('frontend/assets/English.png') }}" alt=""> --}}

					</div>
					
					<div class="info">
						<div class="inf-header">{{ $batch->classSettings->name }}</div>
						<div class="inf-sub">{{ $batch->subject->name }}</div>
						
						
						<div class="inf-more">
							<div class="inf-seats">
								<div class="inf-more-tex">No. of Seats</div>
								<div class="seat-no">
									{{ $batch->no_of_seats }}
								</div>
							</div>
							<div class="inf-divider"></div>
							<div class="info-date">
								<div class="inf-more-tex">Start Date</div>
								<div class="date-no">
									{{ $batch->batch_start_date->format('d M, Y') }}
								</div>
							</div>
						</div>
						
						<div class="inf-det-pri">
							<div>
								<a class="inf-view-det" href="{{ url('/student-details', $batch->id)}}">View Details</a>
								{{-- <a class="inf-view-det" href="#">View Details</a> --}}

							</div>
							<div class="inf-price">&pound; {{ $batch->batch_price_per_session }} &ast;</div>
						</div>
					</div>
				</div>
			@endforeach
		</div>
	</div>
	<section class="upper-footer">
		<div class="form-filler">
			<form action="#">
				<div class="form-big-title">Let's Connect</div>
				<label for="name" class="label-name">Your Name</label>
				<div class="form-inputs">
					<input type="text" name="name" id="name" class="lower-form-text" autocomplete="off" required
						placeholder="Full Name*">
					<input type="text" name="schoolname" id="" class="lower-form-text" required
						placeholder="School Name*">
					<input type="number" name="phone" id="" class="lower-form-text" required
						placeholder="Mobile Number*">
				</div>
				<button type="submit" class="lower-form-button">Submit</button>
			</form>
		</div>
		<div class="man-stick"><img src="{{ asset('frontend/assets/man-with-a-stick.svg') }}" alt="man-with-a-stick"></div>

		<div class="splatter"><img src="{{ asset('frontend/assets/background-splatter.svg') }}" alt="background-splatter"></div>
		<div class="comp-text-nav">
			<div class="company-vert-nav">
				<div class="comp-title">Company</div>
				<div class="comp-nav-outer">
					<ul class="comp-nav-list">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Methodology</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Career</a></li>
					</ul>
				</div>
			</div>
			<div class="company-connect">
				<div class="comp-title">Connect With Us</div>
				<div class="number">
					<div class="num-big">000-111-2222 (Toll Free)</div>
					<div class="num-med">10 AM - 9 PM (All 7 Days)</div>
					<div class="num-sma">&ast;Except National Holidays</div>
				</div>
				<div class="comp-email"> Email: support@waacademy.io.uk</div>
			</div>
		</div>
	</section>
	<footer class="main-footer">
		<div class="copy-nav">
			<div class="copyright">&copy; Copyright 2021-2022 WA Academy. All Rights Reserved</div>
			<div class="footer-nav">
				<ul>
					<li><a href="#">Terms of Use</a></li>
					<li><a href="#">Disclaimer</a></li>
					<li><a href="#">Copyright</a></li>
					<li><a href="#">Disclaimer</a></li>
				</ul>
			</div>
		</div>
		<div class="social-nav">
			<ul>
				<li><a href="#"><img src="{{ asset('frontend/assets/fb.svg') }}" alt="social-fb"></a></li>
				<li><a href="#"><img src="{{ asset('frontend/assets/twit.svg') }}" alt="social-twit"></a></li>
				<li><a href="#"><img src="{{ asset('frontend/assets/insta.svg') }}" alt="social-insta"></a></li>
				<li><a href="#"><img src="{{ asset('frontend/assets/linkedin.svg') }}" alt="social-linkedin"></a></li>
			</ul>
		</div>
	</footer>
	<div class="background">
		<!-- <img src="assets/bg1.svg" alt="background 1"> -->
	</div>
	<!-- <script src="" async defer></script> -->
</body>

</html>