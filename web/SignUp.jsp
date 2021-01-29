



<%@page import="com.project.DatabaseBean"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <!-- backward campatible with 8.0 explorer -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="css/signup1.css">
       
    
    </head>
    <body>

        <section class="sign-up">
            <div class="container">
                <div class="sign-box">
                    <div class="title-style text-center">
                        <h1>SearchEasy</h1>
                    </div>
                </div>

            </div>

        </section>

        
      
        
        
        <form method="post" action="SignupServlet">

            <div class="container">
                <h1 class="sign1">Sign Up</h1>
                <p class="sign1">Please fill in this form to create an account.</p>

                <br/>

                <label for="userId"><b>Userid</b></label>
                <input type="text" placeholder="Enter Userid" name="userId" id="input1" equired ><br/>

                <label for="userName"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="userName" required ><br/>

                <label for="userEmail"><b>Emailid</b></label>
                <input type="text" placeholder="Enter Email" name="userEmail" id="input3" required  /><br/>

               
     
    

                <label for="userPhone"><b>Phoneno</b></label>
                <input type="text" placeholder="Enter PhoneNo." name="userPhone" id="input4" required><br/>

                <label for="userAddress"><b>Address</b></label>
                <input type="text" placeholder="Enter Address" name="userAddress" id="input5" required><br/>

                <label for="userPassword"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="userPassword" id="input6" required>  
                <br/>

                <label for="cpassword"><b>Conform</b></label>
                <input type="password" placeholder="Repeat Password" name="cpassword" id="input7" required>
                <br/>

                <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                </label>

                <p class="sign1">By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                <div class="clearfix">
                    <button type="button" class="cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn" >Sign Up</button>
                </div>
            </div>
        </form>
        
          <script src="script/jquery-3.4.1.min.js"></script>
        <script src="script/bootstrap.min.js"></script>


    </body>
</html>
