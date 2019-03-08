<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<style>
    body {

        background: #ffffff
    }

    a {
        text-decoration: none !important;
    }

    h1, h2, h3 {
        font-family: 'Kaushan Script', cursive;
    }

    .myform {
        margin-top: 50px;
        position: relative;
        display: -ms-flexbox;
        display: flex;
        padding: 1rem;
        -ms-flex-direction: column;
        flex-direction: column;
        width: 100%;
        pointer-events: auto;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid rgba(0, 0, 0, .2);
        border-radius: 1.1rem;
        outline: 0;
        max-width: 500px;
    }

    .tx-tfm {
        text-transform: uppercase;
    }

    .mybtn {
        border-radius: 50px;
    }

    .login-or {
        position: relative;
        color: #aaa;
        margin-top: 10px;
        margin-bottom: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
    }

    .span-or {
        display: block;
        position: absolute;
        left: 50%;
        top: -2px;
        margin-left: -25px;
        background-color: #fff;
        width: 50px;
        text-align: center;
    }

    .hr-or {
        height: 1px;
        margin-top: 0px !important;
        margin-bottom: 0px !important;
    }

    .google {
        color: #666;
        width: 100%;
        height: 40px;
        text-align: center;
        outline: none;
        border: 1px solid lightgrey;
    }

    form .error {
        color: #ff0000;
    }

    #second {
        display: none;
    }
</style>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/main/statistics"> BCR Statistics </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main/TestData"> Predict BCR </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main/about"> about Predict me</a>
            </li>
        </ul>
        <span class="navbar-text">
            <a class="navbar-brand" href="{{ Url('/') }}">Detect <span>BCR</span> </a>

    </span>
    </div>
</nav>

<div class="container">
    @if(Session::has('success'))
        <div class="alert alert-success alert-styled-right alert-arrow-right alert-bordered">
            <span class="text-semibold"> {!! Session::get('success') !!} </span>
        </div>
    @elseif(Session::has('info'))
        <div class="alert alert-info alert-styled-right alert-arrow-right alert-bordered">
            <span class="text-semibold"> {!! Session::get('info') !!} </span>
        </div>
    @elseif(Session::has('warning'))
        <div class="alert alert-warning alert-styled-right alert-arrow-right alert-bordered">
            <span class="text-semibold"> {!! Session::get('warning') !!} </span>
        </div>
    @elseif(Session::has('danger'))
        <div class="alert alert-danger alert-styled-right alert-arrow-right alert-bordered">
            <span class="text-semibold"> {!! Session::get('danger') !!} </span>
        </div>
    @endif

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div id="first">
                <div class="myform form ">
