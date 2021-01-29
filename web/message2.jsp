<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.Seller_SessionBean"
        session="true"%>



<html>
    
    
    <head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/SellEasy.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <%@include file="Common_Login_modal.jsp" %>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
        
    </head>
    <body>
           <jsp:useBean class="com.project.Seller_SessionBean" id="ss" scope="session"  />
       <div class="container" style="background-color: #ccccff;">

           <h2 style="text-align: center;font: 400;color:#3333ff;  ">Welcome! Seller </h2>
           
 <h3 style="text-align: center;font: 400;color:#3333ff;  ">     To Sell-Easy Market</h3>
 <h5 style="text-align: center; color: #666666;">(An Easy Way For Placing Your Shop In Market  )</h5>
 <p></p>
       </div>

<br/>
         
        <img src="images/gif.gif"  width="600" alt="404 image" height="400" style="margin-left: 550px;margin-top: 60px; "/>
       <br/>
       <br/>
       <h3 style="text-align: center"> Login Here 
    <a href="#" data-toggle="modal" data-target="#ht"><i class="fa fa-sign-in text-center"></i>Login</a>
       </h3>
    </body>
</html>


