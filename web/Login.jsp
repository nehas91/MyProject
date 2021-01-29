

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/newcss.css">
</head>

<body>

    <h1 style="text-align: center;color: #3333ff">Welcome To Search Easy</h1>
    <h3 style="text-align: center">(An Easy Way To Search)</h3>

  <%@include  file="message1.jsp" %>
    
<div class="container">
    <form  method="post" action="ExamServlet">
    <div class="row">
      <h2 style="text-align:center">Search Easy</h2>
      <div class="vl">
        <span class="vl-innertext">or</span>
      </div>

      <div class="col">
        <a href="https://www.facebook.com" class="fb btn">
          <i class="fa fa-facebook fa-fw"></i> Login with Facebook
         </a>
        <a href="https://twitter.com/login" class="twitter btn">
          <i class="fa fa-twitter fa-fw"></i> Login with Twitter
        </a>
        <a href="https://www.google.com" class="google btn"><i class="fa fa-google fa-fw">
          </i> Login with Google+
        </a>
      </div>

      <div class="col">
        <div class="hide-md-lg">
          <p>Or sign in manually:</p>
        </div>

        <input type="text" name="userName" placeholder="Username" required>
        <input type="password" name="userPassword" placeholder="Password" required>
        <input type="submit" value="Login" >
      </div>
      
    </div>
  </form>
</div>

<div class="bottom-container">
  <div class="row">
    <div class="col">
        <a href="SignUp.jsp" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="#" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>

</body>
</html>
