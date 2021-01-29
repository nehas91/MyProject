<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
  text-align: center;
  font-family: arial;
  background-color: #00ffcc;
 
  
}

.title {
  color: #3333ff;
  font-size: 18px;
}

h1{
    font: bold;
   
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 1;
}

.sign-box{
  margin: 10px 0;
}

.title-style h1{
  padding: 19px 0;
  font-size: 35px;
  padding-left: 65px;

}

.title-style{
  margin: 0 auto 80px;
  height: 80px;
  width: 25%;
  max-width: 700px;
  background: #fff;
  position: relative;
   box-shadow: 0px 4px 5px 0px #000001; 
  
}

.title-style::after{
  content: '';
  height: 60px;
  width: 120px;
  background-color: rgb(19, 149, 192);
  position: absolute;
  top: -7px;
  left: -7px;
  z-index: -1;
}

.title-style::before{
  content: '';
  height: 60px;
  width: 120px;
  background-color: rgb(19, 149, 192);
  position: absolute;
  bottom: -7px;
  right: -7px;
  z-index: -1;
}


</style>
</head>
<body>
 <jsp:useBean class="com.project.SessionBean" id="sb" scope="session"  />
 
 <section class="sign-up">
            <div class="container">
                <div class="sign-box">
                    <div class="title-style text-center">
                        <h1 >SearchEasy</h1> 
                        <h3 style="text-align: center">(An Easy Way To Search)</h3>
                        
                    </div>
                </div>

            </div>

        </section>
 
<div class="card">
    <img src="images/usericon.png" alt="<%=sb.getUserName()%> style="width:40%">
    <h1 style="font-family: serif"><%=sb.getUserName()%></h1>
    <p class="title">CEO & Founder, SearchEasy</p>
  <p>Sagar Intitute of Science And Technology</p>
  <div style="margin: 30px 0;">
      
      <p> <h3>Emailid:<%= sb.getUserEmail()%></h3> </p>
  <p> <h3>phone: <%= sb.getUserPhone()%> </h3> </p>
 <p><h3> Address: <%=sb.getUserAddress()%></h3> </p> 
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Contact</button></p>
</div>
 </div>

</body>
</html>
