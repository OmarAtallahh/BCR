

<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Name title Bar</title>
        <link rel="stylesheet" href="/interface/css/bootstrap.min.css">
        <link rel="stylesheet" href="/interface/css/main.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    </head>
    
    <body>
        <nav id="global-nav" class="nav">
            <div class="container">
                <div class="pull-left">
                    <h1 class="site-title">BCR Predict</h1>
                </div>
                <div class="pull-right">
                  <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                      <li><a href="/main/statistics"> BCR Statistics </a></li>
                        <li><a href="/main/TestData"> Predict BCR </a></li>
                        <li><a href="/main/about"> about Predict me</a></li>
                    </ul>
                </div>
              </div>
            </div>
        </nav>
        <br><br><br>
    
        <div class="container">
        <!-- <a class="btn btn-success" href="/main/create">Create New Account</a> -->
      </div>
    
    
      <div class="main">
        <p class="sign" align="center">Sign in Admin</p>
          <form class="form1"   method="post" action="{{url('admin/login')}}">
    
            <?php if(\Session::has('error')){
              echo "error";
            }?>
          {!! csrf_field() !!}
          {{--  {{ method_field('PUT') }}  --}}
    
            <input class="un " type="text" align="center" name="email" placeholder="Username">
            <input class="pass" type="password" align="center" name="password" placeholder="Password">
            <div class="submit">
              <button type="submit" class="submit">Sign In</button>
            </div>
                <label align="center">
                  <input type="checkbox" name="rememberme" value="1"> Remember Me
                </label>
        </form>
        <p class="forgot" align="center"><a href="#">Forgot Password?</p>
    </div>
    
    
    
    
    
        <script src="/interface/js/jquery.min.js"></script>
        <script src="/interface/js/bootstrap.min.js"></script>
        <script src="/interface/js/main.js"></script>
    
    </body>
    
    </html>
    