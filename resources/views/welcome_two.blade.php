<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js"> <!--<![endif]-->
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
	<!--[if lt IE 7]>
			<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
		<![endif]-->

	<div class="nav-container">
		<div class="wrapper-nav">
			<nav class="top-nav">
				<div class="logo">
					<img src="{{ asset('frontend/assets/logo.png') }}" alt="wallington-logo">
				</div>
				<ul class="nav-items">
					<li><a href="classes.html">Classes</a></li>
					<li><a href="packages.html">Packages</a></li>
					<li><a href="elevenplus.html">11+ Exam</a></li>
					<li><a href="study-material.html">Study Material</a></li>
				</ul>
				<ul class="nav-buttons">
					@auth
						<li><a class="login" href="{{ url('/student-dashboard')}} ">Welcome {{ auth()->user()->name }}</a></li>
					@endauth																
					
					@guest
						<li><a class="login" href="{{ url('/student-login')}}">Login</a></li>
					@endguest

					@guest
					<li><a class="reg-button" href="{{ url('/student-register') }}">Register</a></li>
					@endguest

				</ul>
			</nav>
		</div>
	</div>


	<div class="header-container">
		<div class="wrapper-hero">
			<div class="hero-content">
				<div class="tagline">
					<div class="hero-text">11 Plus Exam</div>
					<div class="sub-hero-text">Prepare With Us</div>
					<div class="sub-sub-hero-text">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat,
						fuga
						corrupti!</div>
				</div>

				<form class="search-here" action>
					<div class="search-icon-box">
						<!-- <img class="search-icon" src="assets/search.svg" alt="search-icon"> -->
					</div>
					<input type="text" autocomplete="off" id="search" name="search" placeholder="Search here" required>
					<div class="vertical-div"></div>
					<div class="teachers">
						<select name="teachers" class="select-teachers" required>
							<option value="0">Teachers</option>
							<option value="1">Teacher 1</option>
							<option value="2">Teacher 2</option>
							<option value="3">Teacher 3</option>
							<option value="4">Teacher 4</option>
							<option value="5">Teacher 5</option>
						</select>
					</div>
				</form>

			</div>
			<div class="person-image">
				<svg class="person-study" width="836" height="673" fill="none" viewbox="0 0 836 673"
					xmlns="http://www.w3.org/2000/svg">
					<circle class="bluelarge" cx="68" cy="108" r="18" fill="#78E5E1" />
					<circle class="lightbluegrad" opacity=".7" cx="740.5" cy="545.5" r="13.5"
						fill="url(#paint0_linear)" />
					<circle class="pinkupper" cx="8" cy="8" r="8" fill="url(#paint1_linear)" />
					<circle class="pinklower" cx="802" cy="559" r="8" fill="url(#paint2_linear)" />
					<circle class="yellowbig" cx="142.5" cy="18.5" r="14.5" fill="#FBD95E" />
					<circle class="greenweird" cx="789" cy="485" r="13" fill="#A6C437" />
					<circle class="skyblueright" opacity=".6" cx="756" cy="60" r="10" fill="#5ED5FB" />
					<circle class="yellowsmall" opacity=".6" cx="784" cy="27" r="5" fill="#FBD95E" />
					<circle class="darkbluetiny" cx="74" cy="37" r="6" fill="#1D7DEA" />
					<path
						d="M836 600.038H28v.404h808v-.404zM755.039 626.034h-53.522v.404h53.522v-.404zM563.252 630.428h-14.044v.404h14.044v-.404zM699.901 611.041H668.89v.403h31.011v-.403zM182.57 613.755h-69.795v.404h69.795v-.404zM207.198 613.755h-10.229v.404h10.229v-.404zM391.842 620.573H240.456v.404h151.386v-.404zM411.008 527.981H98.975c-5.09 0-9.227-4.136-9.227-9.225V80.226c0-5.09 4.136-9.226 9.227-9.226h312.049c5.091 0 9.228 4.136 9.228 9.225v438.531c-.016 5.089-4.153 9.225-9.244 9.225zM98.975 71.404c-4.864 0-8.823 3.958-8.823 8.821v438.531c0 4.863 3.959 8.821 8.823 8.821h312.049c4.865 0 8.824-3.958 8.824-8.821V80.226c0-4.864-3.959-8.822-8.824-8.822H98.974zM760.549 527.981h-312.05c-5.09 0-9.227-4.136-9.227-9.225V80.226c0-5.09 4.137-9.226 9.227-9.226h312.05c5.09 0 9.227 4.136 9.227 9.225v438.531c0 5.089-4.137 9.225-9.227 9.225zM448.499 71.404c-4.864 0-8.823 3.958-8.823 8.821v438.531c0 4.863 3.959 8.821 8.823 8.821h312.05c4.864 0 8.823-3.958 8.823-8.821V80.226c0-4.864-3.959-8.822-8.823-8.822h-312.05z"
						fill="#EBEBEB" />
					<path d="M126.343 300.32h118.485V104.457H126.343V300.32z" fill="#F5F5F5" />
					<path d="M126.334 104.443h-2.343v195.863h2.343V104.443z" fill="#E0E0E0" />
					<path d="M138.366 291.692h94.455V113.068h-94.455v178.624z" fill="#FAFAFA" />
					<path d="M272.79 369.068h118.485V173.205H272.79v195.863z" fill="#F5F5F5" />
					<path d="M272.792 173.221h-2.343v195.863h2.343V173.221z" fill="#E0E0E0" />
					<path d="M284.813 360.457h94.456V181.832h-94.456v178.625z" fill="#FAFAFA" />
					<path
						d="M196.387 549.42c2.942-53.267-4.831-138.992-13.251-168.639-1.115-3.926-2.391-8.498-4.298-9.096-5.511-1.745-7.983 6.882-7.288 9.839 3.296 14.331 6.253 49.842 9.211 111.64 1.47 30.762-.033 51.83 3.943 56.273l11.683-.017z"
						fill="#E6E6E6" />
					<path
						d="M187.628 430.591c7.725-24.962 106.608-50.602 78.134-23.75-7.094 6.689-40.125 24.315-53.683 42.846-10.537 14.396-21.186 38.598-23.998 52.04-1.228-28.241-5.591-54.495-.453-71.136z"
						fill="#E6E6E6" />
					<path
						d="M198.892 462.241c17.227-37.984 72.332-44.802 57.514-24.752-5.818 7.868-27.149 16.835-40.724 35.383-10.536 14.395-21.185 38.597-23.997 52.039-1.228-28.257.016-46.805 7.207-62.67z"
						fill="#E6E6E6" />
					<path
						d="M177.238 459.009c-20.394-48.872-94.068-52.75-74.466-30.05 7.45 8.627 33.484 24.46 53.151 44.85 15.287 15.833 32.513 42.071 38.38 56.466-3.798-29.889-8.84-51.555-17.065-71.266z"
						fill="#E6E6E6" />
					<path
						d="M185.803 404.336c18.26-33.476 73.528-37.046 57.755-18.741-6.189 7.19-26.34 16.334-39.495 34.316-10.229 13.959-22.51 32.183-25.242 45.205-1.195-27.401-1.115-45.932 6.982-60.78z"
						fill="#E6E6E6" />
					<path
						d="M169.901 404.999c-14.414-20.793-78.974-43.687-62.151-24.832 17.63 19.759 30.154 16.35 46.815 33.621 12.945 13.41 27.537 35.625 32.498 47.823-3.2-25.333-6.852-41.748-17.162-56.612zM187.015 381.039c9.13-16.447 46.912-28.548 37.006-15.93-6.868 8.757-15.11 14.767-23.836 26.69-6.787 9.258-15.998 20.923-17.808 29.566-.776-18.176-.808-30.519 4.638-40.326z"
						fill="#E6E6E6" />
					<path
						d="M172.131 386.015c-9.211-10.194-58.467-34.445-47.22-18.87 4.412 6.107 23.206 21.019 35.876 34.138 9.841 10.195 20.636 18.483 24.401 27.74-2.456-19.242-3.83-32.813-13.057-43.008z"
						fill="#E6E6E6" />
					<path
						d="M184.752 421.85c-13.461-14.896-111.6-34.09-86.375-17.659 8.646 5.623 46.573 15.3 65.076 34.462 14.366 14.896 19.538 39.566 25.048 53.105 14.512-23.765 9.729-54.996-3.749-69.908z"
						fill="#E6E6E6" />
					<path
						d="M167.946 547.255l1.26 44.575c.146 8.45 2.101 8.208 4.493 8.208h31.722c2.391 0 4.363.258 4.492-8.208l1.261-44.575c.145-9.177-1.907-16.899-4.493-16.899h-34.243c-2.585-.016-4.638 7.722-4.492 16.899z"
						fill="#F5F5F5" />
					<path
						d="M166.055 538.466h47.01c.694 0 1.276-.436 1.341-1.018l1.115-8.53c.081-.679-.533-1.26-1.341-1.26h-49.256c-.808 0-1.438.597-1.341 1.26l1.115 8.53c.08.582.662 1.018 1.357 1.018z"
						fill="#F5F5F5" />
					<path
						d="M498.046 349.874h-35.584v239.371h35.584V349.874zM739.04 589.245H469.297v10.793H739.04v-10.793z"
						fill="#F0F0F0" />
					<path d="M498.045 589.24h247.83V349.868h-247.83V589.24z" fill="#F5F5F5" />
					<path d="M494.361 340.455h-36.376v9.419h36.376v-9.419z" fill="#F0F0F0" />
					<path d="M494.355 349.866h255.99v-9.419h-255.99v9.419z" fill="#FAFAFA" />
					<path
						d="M732.899 462.887H511.022v-93.076h221.877v93.076zm-219.84-2.036h217.82v-89.005h-217.82v89.005zM732.899 569.309H511.022v-91.768h221.877v91.768zm-219.84-2.036h217.82V479.56h-217.82v87.713z"
						fill="#E0E0E0" />
					<path
						d="M665.156 388.116h-86.407c-2.101 0-3.83-1.729-3.83-3.829 0-2.101 1.729-3.829 3.83-3.829h86.407c2.101 0 3.83 1.728 3.83 3.829 0 2.1-1.713 3.829-3.83 3.829zM665.156 495.83h-86.407c-2.101 0-3.83-1.729-3.83-3.829 0-2.101 1.729-3.829 3.83-3.829h86.407c2.101 0 3.83 1.728 3.83 3.829 0 2.1-1.713 3.829-3.83 3.829z"
						fill="#E0E0E0" />
					<path d="M610.423 340.358h102.778l8.339-91.623H618.762l-8.339 91.623z" fill="#E6E6E6" />
					<path d="M606.933 340.358H709.71l8.339-91.623H615.271l-8.338 91.623z" fill="#F0F0F0" />
					<path d="M700.483 330.211l6.496-71.33h-82.481l-6.496 71.33h82.481z" fill="#fff" />
					<path d="M586.619 273.455l-6.092 66.903h49.256l6.092-66.903h-49.256z" fill="#E6E6E6" />
					<path d="M584.066 273.455l-6.092 66.903h49.272l6.076-66.903h-49.256z" fill="#F0F0F0" />
					<path d="M590.805 280.854l-4.751 52.104h34.453l4.735-52.104h-34.437z" fill="#fff" />
					<path
						d="M375.877 479.157H238.565c-2.828 0-5.155-2.31-5.155-5.154v-7.335c0-2.827 2.311-5.154 5.155-5.154h137.312c2.828 0 5.155 2.311 5.155 5.154v7.335c-.016 2.827-2.327 5.154-5.155 5.154zM374.309 645.017h4.089l-4.703-165.86h-5.672l6.286 165.86z"
						fill="#407BFF" />
					<path opacity=".3" d="M374.309 645.017h4.089l-4.703-165.86h-5.672l6.286 165.86z" fill="#fff" />
					<path d="M336.608 645.017h-4.088l4.718-165.86h5.656l-6.286 165.86z" fill="#407BFF" />
					<path opacity=".3" d="M336.608 645.017h-4.088l4.718-165.86h5.656l-6.286 165.86z" fill="#fff" />
					<path d="M277.818 645.017h4.088l-4.702-165.86h-5.672l6.286 165.86z" fill="#407BFF" />
					<path opacity=".3" d="M277.818 645.017h4.088l-4.702-165.86h-5.672l6.286 165.86z" fill="#fff" />
					<path d="M240.132 645.017h-4.104l4.719-165.86h5.656l-6.271 165.86z" fill="#407BFF" />
					<path opacity=".3" d="M240.132 645.017h-4.104l4.719-165.86h5.656l-6.271 165.86z" fill="#fff" />
					<path
						d="M314.711 415.517s72.752 13.119 78.586 36.998c11.522 47.209 37.507 121.043 37.507 121.043l-27.666 8.014s-39.543-84.659-44.537-113.159c-40.788-.049-90.528 3.296-96.96-14.04-5.672-15.316-3.652-38.856-3.652-38.856h56.722z"
						fill="#263238" />
					<path d="M417.957 602.866l14.576-4.928-11.974-34.025-14.577 4.927 11.975 34.026z" fill="#FFC3BD" />
					<path
						d="M431.451 592.316l-15.983 7.011c-.581.259-.808.824-.533 1.39l6.06 12.311c.63 1.276 2.537 1.906 3.862 1.309 5.511-2.537 7.999-4.007 15.013-7.093 4.331-1.89 13.041-5.283 18.438-8.74 5.269-3.393 1.164-8.499-1.486-7.481-6.287 2.391-16.726 2.294-22.447 1.066-1.034-.242-2.068-.145-2.924.227z"
						fill="#263238" />
					<path opacity=".2" d="M405.982 568.857l14.577-4.944 6.835 19.468-14.818 4.233-6.594-18.757z"
						fill="#000" />
					<path d="M401.619 584.483l32.32-10.679-2.763-14.589-35.245 12.408 5.688 12.86z" fill="#798744" />
					<path d="M354.61 608.036l16.096 1.227-9.454-39.712-15.013 3.393 8.371 35.092z" fill="#FFC3BD" />
					<path
						d="M370.301 605.386l-17.339-1.923c-.631-.064-1.115.323-1.148.937l-.905 13.701c-.097 1.422 1.228 2.924 2.683 3.054 6.044.565 8.92.517 16.548 1.373 4.686.517 13.93 1.939 20.345 1.632 6.27-.307 5.252-6.77 2.456-7.222-6.641-1.067-15.626-6.382-19.973-10.292-.792-.727-1.746-1.163-2.667-1.26z"
						fill="#263238" />
					<path opacity=".2" d="M346.239 572.96l15.013-3.393 4.767 20.066-15.174 2.666-4.606-19.339z"
						fill="#000" />
					<path
						d="M276.929 415.517s88.411 13.232 84.355 46.692c-5.834 48.242 9.147 118.022 9.147 118.022l-28.361 5.073s-20.863-86.727-21.041-115.663c-28.764 0-79.038 2.052-85.454-15.268-5.672-15.316-3.652-38.856-3.652-38.856h45.006z"
						fill="#263238" />
					<path d="M340.05 590.021l33.273-7.238L372.095 568l-36.36 8.644 4.315 13.377z" fill="#798744" />
					<path
						d="M323.502 322.537a2621.82 2621.82 0 016.933 27.854c2.262 9.289 4.476 18.595 6.819 27.772l1.762 6.851.904 3.36.469 1.664.065.21.032.113c.016.049-.048-.145-.081-.21a6.573 6.573 0 00-.468-.953 1.941 1.941 0 00-.243-.355c-.064-.081-.113-.162-.178-.243-.161-.178-.226-.258-.323-.355-.355-.323-.388-.275-.307-.194.065.097.323.275.582.468a17.65 17.65 0 002.23 1.261c1.745.856 3.782 1.648 5.866 2.455 8.42 3.119 17.695 5.768 26.713 8.628l-1.422 10.308c-5.026.064-9.923-.162-14.884-.582-4.961-.436-9.906-1.066-14.98-2.1a67.34 67.34 0 01-7.854-2.036 39.425 39.425 0 01-4.347-1.713c-.792-.387-1.584-.791-2.505-1.389-.905-.598-1.89-1.309-3.054-2.52-.291-.324-.566-.614-.889-1.051l-.452-.614a8.575 8.575 0 01-.469-.759 10.729 10.729 0 01-.84-1.777l-.275-.759-.614-1.778-1.212-3.522c-.792-2.342-1.568-4.669-2.279-7.012-2.925-9.322-5.591-18.628-8.112-27.982a785.95 785.95 0 01-7.013-28.161l20.426-4.879z"
						fill="#FFC3BD" />
					<path
						d="M300.781 311.357c8.872-9.887 22.947-2.973 28.862 19.145 2.876 10.76 1.971 16.399 1.971 16.399l-30.607 9.419c-6.577-14.524-12.297-31.488-.226-44.963z"
						fill="#798744" />
					<path opacity=".2"
						d="M300.781 311.357c8.872-9.887 22.947-2.973 28.862 19.145 2.876 10.76 1.971 16.399 1.971 16.399l-30.607 9.419c-6.577-14.524-12.297-31.488-.226-44.963z"
						fill="#000" />
					<path
						d="M390.227 396.63l-2.747-.84a12.568 12.568 0 00-5.139-.468l-5.899.694c-3.959 1.002-7.288 3.555-9.001 6.899l-2.003 3.894c1.001 7.222 15.61 4.895 15.61 4.895h13.736l-.452-9.791c-.097-2.439-1.746-4.556-4.105-5.283z"
						fill="#FFC3BD" />
					<path
						d="M399.713 380.862c-.275 2.956-1.843 5.057-3.346 7.189a283.785 283.785 0 01-4.524 6.398c-3.087 4.201-6.238 8.369-9.712 12.327a.929.929 0 01-1.326.081.941.941 0 01-.21-1.131c2.392-4.685 5.091-9.16 7.854-13.587a253.987 253.987 0 014.266-6.56c1.422-2.181 2.796-4.41 5.446-5.767a1.062 1.062 0 011.438.468c.097.194.13.388.114.582z"
						fill="#263238" />
					<path
						d="M302.833 301.777l-17.242-4.912-22.188-1.05c-6.916-.323-13.17 4.023-15.336 10.599-4.234 12.892-8.112 31.553-10.956 47.661-3.184 18.063-4.832 36.772-5.188 61.458h82.788c1.681-45.98 7.094-68.422 10.31-84.691 1.955-9.936-3.054-19.937-12.201-24.283l-9.987-4.782z"
						fill="#798744" />
					<path
						d="M279.708 305.008c2.101 5.396 10.246 16.915 19.7 21.423 5.252-3.797 6.367-12.069 7.175-15.962l-26.875-5.461z"
						fill="#fff" />
					<path
						d="M306.566 310.485c.453-2.214.485-4.475-.711-6.366-1.341-2.1-1.002-4.507.34-6.979.872-1.616 3.28-5.057 3.959-5.38l-10.843-12.683-8.84-10.227c-.759 9.581-1.503 21.439-9.05 28.888-2.666 2.617-3.215 3.425-1.713 7.286 2.101 5.396 9.616 12.925 19.069 17.433 5.252-3.797 6.998-8.095 7.789-11.972z"
						fill="#FFC3BD" />
					<path opacity=".2"
						d="M306.825 289.579l-6.108-9.936c-.13.242-.275.533-.421.824a22.798 22.798 0 00-1.308 3.812c-1.132 4.411 2.617 10.712 6.738 13.733.162-.29.307-.565.485-.856.776-1.454 2.957-4.605 3.701-5.218.08-.081.161-.13.242-.178l-3.329-2.181z"
						fill="#000" />
					<path
						d="M328.221 265.829c1.422 9.161 14.527-14.411 7.207-19.581-8.953-6.334-9.89 2.148-7.207 19.581z"
						fill="#263238" />
					<path
						d="M290.875 253.873c-.841 14.88-2.117 23.524 4.718 32.119 10.278 12.925 30.01 8.66 35.456-5.59 4.896-12.828 5.445-34.995-8.856-42.847-14.092-7.722-30.478 1.455-31.318 16.318z"
						fill="#FFC3BD" />
					<path
						d="M320.205 244.939s9.518 9.338 16.306 5.477c6.771-3.862 8.177-13.862 0-22.619-3.927-4.217-9.874-8.337-21.542-8.014.857 1.115 3.297 2.02 3.297 2.02s-14.786-2.472-25.113 1.777c0 0 1.342 2.068 3.297 3.005-10.035-.759-19.78 3.167-12.863 12.651-9.098.872-11.135 12.521-6.287 20.195 4.848 7.674 5.705 13.426 12.185 16.916.065-10.453 2.408-12.909 2.408-12.909 4.67-1.971 10.051-11.94 8.985-16.964 9.777 3.942 20.426 5.267 19.327-1.535z"
						fill="#263238" />
					<path
						d="M285.784 238.832c-2.844-2.343-5.3-4.476-7.094-8.983-1.163 5.202 4.234 11.131 4.234 11.131l2.86-2.148z"
						fill="#263238" />
					<path
						d="M283.442 262c.08 3.651 1.729 7.012 3.765 9.161 3.086 3.231 7.288.484 8.015-3.668.663-3.732-.921-9.451-4.783-11.132-3.782-1.648-7.094 1.471-6.997 5.639z"
						fill="#FFC3BD" />
					<path
						d="M315.244 261.548c-.242 1.228.194 2.375.986 2.552.792.194 1.632-.646 1.891-1.874.242-1.228-.194-2.375-.986-2.552-.792-.178-1.648.662-1.891 1.874zM328.98 264.827c-.242 1.228.194 2.375.986 2.553.792.194 1.632-.646 1.89-1.874.243-1.228-.193-2.375-.985-2.553-.808-.194-1.649.646-1.891 1.874z"
						fill="#263238" />
					<path d="M324.407 264.73s.695 6.641 2.456 10.276c-2.262 1.131-5.106-.582-5.106-.582l2.65-9.694z"
						fill="#ED847E" />
					<path
						d="M319.219 281.291c-4.799-1.051-6.835-4.637-6.932-4.799a.37.37 0 01.145-.501.37.37 0 01.501.146c.016.048 2.327 4.12 7.789 4.653.21.016.356.194.323.404a.355.355 0 01-.404.323 12.62 12.62 0 01-1.422-.226zM313.435 256.604a.74.74 0 01-.291-.21.74.74 0 01.097-1.034c3.086-2.553 6.334-1.487 6.464-1.438.371.081.598.549.452.921a.721.721 0 01-.921.452c-.129-.048-2.634-.808-5.058 1.196a.735.735 0 01-.743.113zM330.677 256.894a.587.587 0 01.016-.371.731.731 0 01.905-.501c3.862 1.082 4.832 4.346 4.864 4.491.146.356-.113.792-.501.905a.731.731 0 01-.905-.501c-.048-.129-.824-2.617-3.862-3.473a.769.769 0 01-.517-.55z"
						fill="#263238" />
					<path
						d="M266.861 318.078c-3.119 8.854-6.205 18.095-8.985 27.127-1.406 4.54-2.666 9.08-3.83 13.555-1.115 4.475-2.068 8.951-2.569 13.038-.049.501-.129 1.018-.162 1.486l-.048.711c-.016.227-.032.566-.049.453-.048-.033-.129.08-.032.42.145.662.824 2.003 1.955 3.328 2.263 2.714 5.705 5.558 9.373 8.11 7.385 5.187 15.95 9.807 24.321 14.121l-3.329 9.855c-5.139-1.098-9.922-2.488-14.803-4.168-4.848-1.68-9.631-3.635-14.398-6.026-4.735-2.488-9.486-5.203-14.075-9.549-2.263-2.213-4.606-4.83-6.335-8.724a19.533 19.533 0 01-1.616-6.721c-.049-.727-.032-.986-.049-1.373l-.016-1.131c-.016-.76.033-1.454.049-2.181.226-5.704 1.066-10.89 2.036-16.011.969-5.106 2.181-10.049 3.474-14.961a290.56 290.56 0 019.389-28.791l19.699 7.432z"
						fill="#FFC3BD" />
					<path
						d="M262.353 295.799c15.804-.146 18.794 12.149 10.197 31.634-4.493 10.194-12.023 19.92-12.023 19.92l-26.131-13.878c3.491-15.558 9.874-37.515 27.957-37.676z"
						fill="#798744" />
					<path
						d="M305.952 398.86l-5.785-3.167a5.043 5.043 0 00-3.103-.566l-6.949.954c-4.67.484-8.063 4.055-10.617 7.157l-2.973 3.619c-.146 7.303 18.309 5.59 18.309 5.59l16.144-.21-.501-6.366a8.736 8.736 0 00-4.525-7.011z"
						fill="#FFC3BD" />
					<path d="M650.709 408.57H213.274v20.47h437.435v-20.47z" fill="#407BFF" />
					<path opacity=".3" d="M355.159 408.57H213.274v20.47h141.885v-20.47z" fill="#fff" />
					<path d="M224.991 429.04H218.3v225.671h6.691V429.04z" fill="#407BFF" />
					<path opacity=".7" d="M224.991 429.04H218.3v225.671h6.691V429.04z" fill="#fff" />
					<path d="M350.15 429.04h-6.691v225.671h6.691V429.04z" fill="#407BFF" />
					<path opacity=".7" d="M350.15 429.04h-6.691v225.671h6.691V429.04z" fill="#fff" />
					<path d="M520.541 429.04h-6.69v225.671h6.69V429.04z" fill="#407BFF" />
					<path opacity=".7" d="M520.541 429.04h-6.69v225.671h6.69V429.04z" fill="#fff" />
					<path d="M645.7 429.04h-6.69v225.671h6.69V429.04z" fill="#407BFF" />
					<path opacity=".7" d="M645.7 429.04h-6.69v225.671h6.69V429.04z" fill="#fff" />
					<path
						d="M603.215 318.095H483.631c-4.056 0-7.902 3.312-8.581 7.367l-12.475 75.757c-.663 4.055 2.1 7.367 6.157 7.367h119.584c4.056 0 7.902-3.312 8.581-7.367l12.475-75.757c.663-4.055-2.101-7.367-6.157-7.367z"
						fill="#263238" />
					<path
						d="M527.36 403.626H414.773c-.743 0-1.341.614-1.341 1.341v2.246c0 .743.614 1.341 1.341 1.341H527.36c.744 0 1.341-.614 1.341-1.341v-2.246c0-.727-.597-1.341-1.341-1.341z"
						fill="#263238" />
					<path opacity=".2"
						d="M603.215 318.095H486.33c-4.056 0-7.902 3.312-8.581 7.367l-12.476 75.757c-.662 4.055 2.101 7.367 6.157 7.367h116.886c4.056 0 7.902-3.312 8.581-7.367l12.475-75.757c.663-4.055-2.101-7.367-6.157-7.367z"
						fill="#fff" />
					<path
						d="M293.768 403.626s38.509 5.736 57.093-1.842c8.694 4.185 39.673 6.253 50.435 1.842-3.329 3.861-11.15 4.944-11.15 4.944h-81.237c-7.805 0-13.768-3.409-15.141-4.944z"
						fill="#407BFF" />
					<path opacity=".7"
						d="M293.768 403.626s38.509 5.736 57.093-1.842c8.694 4.185 39.673 6.253 50.435 1.842-3.329 3.861-11.15 4.944-11.15 4.944h-81.237c-7.805 0-13.768-3.409-15.141-4.944z"
						fill="#fff" />
					<defs>
						<lineargradient id="paint0_linear" x1="713.5" y1="545.5" x2="740.5" y2="572.5"
							gradientunits="userSpaceOnUse">
							<stop stop-color="#43E695" />
							<stop offset="1" stop-color="#3BB2B8" />
						</lineargradient>
						<lineargradient id="paint1_linear" x1="24" y1="8" x2="8" y2="-8" gradientunits="userSpaceOnUse">
							<stop stop-color="#FF7676" />
							<stop offset="1" stop-color="#F54EA2" />
						</lineargradient>
						<lineargradient id="paint2_linear" x1="818" y1="559" x2="802" y2="543"
							gradientunits="userSpaceOnUse">
							<stop stop-color="#FF7676" />
							<stop offset="1" stop-color="#F54EA2" />
						</lineargradient>
					</defs>
				</svg>
			</div>
		</div>
	</div>
	<div class="how-works">
		<div class="how-works-text">How It Works!</div>
		<div class="how-works-extra" id="hw-works-extra-1">
			<div class="hw-img-div" id="hw-img-div-1">
				{{-- <img src="{{ asset('frontend/assets/ayd1.jpeg') }}" style="width: 588px;" alt="" class="hw-img"> --}}
				<img src="{{ asset('frontend/assets/ayd1.jpeg') }}" style="width: 588px;" alt="" class="hw-img">

			</div>
			<div class="hw-text" id="hw-text-1">
				<div class="hw-step">Step -1</div>
				<div class="hw-title">Ask your Doubt</div>
				<div class="hw-lorem">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi repudiandae ullam,
					alias nam
					reprehenderit deleniti earum cum. Quia, officiis. Excepturi necessitatibus fugiat asperiores quas
					illo soluta obcaecati exercitationem dignissimos temporibus.
				</div>
			</div>
		</div>
		<div class="how-works-extra" id="hw-works-extra-2">
			<div class="hw-text" id="hw-text-2">
				<div class="hw-step">Step -2</div>
				<div class="hw-title">Ask your Doubt</div>
				<div class="hw-lorem">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi repudiandae ullam,
					alias nam
					reprehenderit deleniti earum cum. Quia, officiis. Excepturi necessitatibus fugiat asperiores quas
					illo soluta obcaecati exercitationem dignissimos temporibus.
				</div>
			</div>
			<div class="hw-img-div" id="hw-img-div-2">
				<img src="{{ asset('frontend/assets/ayd2.jpeg') }}" style="width: 588px;" alt="" class="hw-img">
			</div>
		</div>
	</div>
	<div class="available-courses">
		<a href={{ url('/available-courses') }}><div class="available-courses-text">Available Courses</div>
		{{-- <div class="available-courses-text"><a href={{ url('/available-courses') }}></div></a> --}}

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
						@if($batch->subject->name == 'English')
						{{-- <img src="{{ asset('frontend/assets/card-cover.png') }}" alt=""> --}}

							<img src="{{ asset('frontend/assets/English/English.jpg') }}" alt="">
						@endif
						@if($batch->subject->name == 'Maths')
							<img src="{{ asset('frontend/assets/Maths/Maths.jpg') }}" alt="">
						@endif
						@if($batch->subject->name == 'Physics')
							<img src="{{ asset('frontend/assets/Physics/Physics.jpg') }}" alt="">
						@endif
						@if($batch->subject->name == 'Chemistry')
							<img src="{{ asset('frontend/assets/card-cover.png') }}" alt="">
						@endif
						{{-- <img src="{{ asset('frontend/assets/card-cover.png') }}" alt=""> --}}
						


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
	<div class="why11">
		<div class="why11-text">Why 11+</div>
		<div class="why11-details">
			<div class="why11-detail-text">
				<div class="why11-detail-text-title">Lorem ipsum dolor sit amet consectetur adipisicing.</div>
				<div class="why11-detail-text-sub-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia
					voluptatum
					perspiciatis iste, doloribus quos excepturi. Molestias blanditiis ea dolores odit in? Eum natus fuga
					corporis accusantium molestiae aperiam sit at?</div>
			</div>
			<div class="why11-img">
				<img src="{{ asset('frontend/assets/screen.svg') }}" alt="screen" id="why11-screen">
				<img src="{{ asset('frontend/assets/play.svg') }}" alt="play" id="why11-play">
				<img src="{{ asset('frontend/assets/splash-graphic.svg') }}" alt="splash" id="why11-splash">
			</div>
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