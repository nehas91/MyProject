<%-- 
    Document   : logout
    Created on : 18 Sep, 2020, 7:58:28 PM
    Author     : Bhupendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="UTF-8">
        <!--Backward compatible with Internet Explorer 8.0-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--Responsive Apps, Size adjusted as per device size-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Add Bootstrap CSS Before any other custom css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="css/mystyle.css" />
    </head>
    <body>
        <!--Step I: Define a div with class=container-->
        <div class="container">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Thanks for using this App
                </div>
                <div class="panel-body ">
                    <p style="text-align: center; font-size: x-large; color: #3366ff;">  This application is designed by SearchEasy
                    <br/>
                    <p style="text-align: center; font-size: larger; color: #000033;font:bolder; " >  (An E-commerce platform for Buying and Selling)</p>
                </div>
                <div class="panel-footer">
                    <a class="btn btn-primary" href="Login.jsp">Click Here to Login Again</a>
                </div>
            </div>
        </div>
        
        <script src="script/jquery-3.4.1.min.js"></script>
        <script src="script/bootstrap.js"></script>
    </body>
</html>