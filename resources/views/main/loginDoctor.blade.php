@include('_layouts.login-header')

<div class="logo mb-3">
    <div class="col-md-12 text-center">
        <h1>
            Doctor Dashboard
        </h1>
    </div>
</div>

<form action="{{ route('doLoginForDoctor') }}" method="post" name="login">
    @csrf
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="email" class="form-control" id="email"
               aria-describedby="emailHelp" placeholder="Enter email">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Password</label>
        <input type="password" name="password" id="password" class="form-control"
               aria-describedby="emailHelp" placeholder="Enter Password">
    </div>
    <div class="col-md-12 text-center ">
        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
    </div>
    <div class="col-md-12 ">
        <div class="login-or">
            <hr class="hr-or">
            <span class="span-or">or</span>
        </div>
    </div>
    <div class="col-md-12 mb-3">
        <p class="text-center">
            <a href="{{ route('loginViewAdmin') }}" class="google btn mybtn"><i class="fa fa-sign-in">
                </i> Login As a ADMIN
            </a>
        </p>
    </div>
</form>

@include('_layouts.login-footer')
