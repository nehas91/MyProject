
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.loader {
  border: 10px solid #f3f3f3;
  border-radius: 100%;
  border-top: 10px solid blue;
  border-bottom: 10px solid blue;
  width: 30px;
  height: 30px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
</style>
</head>
<body>

    


<%
    String message=(String)session.getAttribute("message");
    if(message!=null)
    {
        out.print("<h3>" +message+ "  <p> Please Login...! <div class=loader></div></p></h3>");
        
        
        
        session.removeAttribute("message");
    }

%>


    
    




</body>
</html>
