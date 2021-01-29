
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true" %>
<!DOCTYPE html>
<html>
   <head>
        <title>SearchEasy</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/test.css">
       
    <script src="https://kit.fontawesome.com/6e66c93b0c.js" crossorigin="anonymous"></script>   
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    
           <script  type="text/javascript"src="script/Add_To_Cart.js"></script>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
   
    
    
   
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
   </head>
    <body>
       
        <%@include file="Common_modals.jsp" %>
        <%
        if(session==null)
        {
            response.sendRedirect("Login.html");
            return;
        }
        
        %>
        <%--
        by use of useBean retireiving object with name sb from session
        --%>
           <jsp:useBean class="com.project.SessionBean" id="sb" scope="session"  />
           <%--<h1> your session details </h1> 
        <%-- access userid of object sb of sessionBean class --%>
        
        <%-- access userid of object sb of sessionBean class --%>
        
        <%-- it only works when getter function is defined for it 
        
        userid:<jsp:getProperty name="sb" property="userid" />
        <br/>
                
         shorter way is to use expression language syntax --%>
      
        
         <div class="top-navbar">
        <div class="search-box">

            <i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
            <i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>

            <img src="images/log2.jpeg" class="logo">
            <input type="text" class="form-control">
            <span class="input-group-text"><i class="fa fa-search" aria-hidden="true"></i></span>
        </div>
    <div class="menu-bar">
        <ul>
            <li><a href="#" data-toggle="modal" data-target="#cart"><i class="fa fa-shopping-basket"></i><span class="cart-items">( 0 )</span></a></li>
            <li><a href="Seller-StartPage.jsp"><i class="fa fa-briefcase"></i>SellEasy</a></li>
            <li><a href="MyProfile.jsp"><i class="fa fa-user"></i><%=sb.getUserName()%></a>  
               
            </li>
        </ul>
    </div>
    </div>
    <section class="header">
        <div class="side-menu" id="side-menu">
            <ul>
                <header class="headdd">Categories:-</header>
                <li><a href="Electronics-1.jsp"><i class="fa fa-headphones"></i>Electronics</a></li>
                <li><a href="Furniture1.jsp"><i class="fa fa-bed"></i>Furnitures</a></li>
                <li><a href="Covid19 Care-1.jsp"> <i class="fa fa-pump-medical"></i>Covid19 Care</a></li>
                <li><a href="Footwear1.jsp"><i class="fa fa-shopping-bag"></i>Footwears</a></li>
                <li><a href="Sports Items-1.jsp"><i class="fa fa-cube"></i>Sports Items</a></li>
                <li><a href="Stationary-1.jsp"><i class="fa fa-paint-brush"></i>Stationaries</a></li>

            </ul>
        </div>

        <div class="slider">

            <div id="slider" class="carousel slide carousel-fade" data-ride="carousel" data-interval="3000">
                 <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="Electronics-2.jsp">  <img src="images/image18.jpeg" class="d-block w-100"></a>
                        </div>
                        <div class="carousel-item">
                            <a href="Furniture1.jsp">    <img src="images/image26.jpeg" class="d-block w-100"> </a>
                        </div>
                        <div class="carousel-item">
                            <a href="Electronics-1.jsp"> <img src="images/image27.jpeg" class="d-block w-100" > </a>
                        </div>

                    </div>


                <ol class="carousel-indicators">
                    <li data-target="#slider" data-slide-to="0" class="active"></li>
                    <li data-target="#slider" data-slide-to="1"></li>
                    <li data-target="#slider" data-slide-to="2"></li>
                  </ol>
                
              </div>


        </div>

    </section>

<!-- _______________________________Category__________________________________ -->

    <section class="category">
        <div class="container">
            <div class="titlebox">
                <h2>Categories:-</h2>
            </div>
        </div>
    </section>

    <section class="featured">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <a href="Electronics-1.jsp"><img src="images/headphone.jpg" alt=""></a>
                    <h3><a href="Electronics-1.jsp">Electronics</a></h3>
                </div>
                <div class="col-md-4">
                    <a href="Furniture1.jsp"> <img src="images/furniture.jpg" alt=""></a>
                    <h3><a href="Furniture1.jsp">Furnitures</a></h3>
                </div>
                    <div class="col-md-4">
                        <a href="Footwear1.jsp"><img src="images/shoes.jpg" alt=""></a>
                        <h3><a href="Footwear1.jsp">Footwears</a></h3>
                    </div>
                    <div class="col-md-4">
                        <a href="Covid19 Care-1.jsp"><img src="images/mask9.jpeg" class="take" alt=""></a>
                        <h3><a href="Covid19 Care-1.jsp">Covid19 Care</a></h3>
                    </div>
                    <div class="col-md-4">
                        <a href="Sports Items-1.jsp"><img src="images/sports.jpg" class="take" alt=""></a>
                        <h3><a href="Sports Items-1.jsp">Sports Items</a></h3>
                    </div>
                    <div class="col-md-4">
                        <a href="Stationary-1.jsp"><img src="images/stat.jpg" class="take" alt=""></a>
                        <h3><a href="Stationary-1.jsp">Stationaries</a></h3>
                    </div>
            </div>
        </div>

    </section>

   
    <section class="category2">
        <div class="container2">
            <div class="titlebox2">
                <h2>On Sale:-</h2>
            </div>
        </div>
    </section>

    <section class="onsale">
    <div class="row text-center">
        <div class="col-md-3">
            <div class="firstimg">
                <a href="product-22.jsp"> <img src="images/onsalelap.jpg" alt="" class="img1"></a>
                <div class="caption1">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                      <h4>Apple MacBook Pro</h4>
                    <h5 id="section1"><del class="del1">&#8377; 1,79,900</del>  5% off</h5>
                    <h5>&#8377; 1,69,990</h5>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="firstimg2">
                <a href="product-34.jsp">  <img src="images/onsalesofa.jpg" alt="" class="img2"></a>
                <div class="caption2">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h4>Grey Sofa</h4>
                    <h5 id="section2"><del class="del2">&#8377; 19,999</del> 42%off</h5>
                    <h5>&#8377; 11,499</h5>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="firstimg3">
                <a href="product-0.jsp">  <img src="images/onsalephone.jpg" alt="" class="img3"> </a>
                <div class="caption3">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h4>Apple iPhone8</h4>
                    <h5 id="section3"><del class="del3">&#8377; 39,900</del> 2% off</h5>
                    <h5>&#8377; 38,999</h5>
                </div>
            </div>
        </div>


    </div>

    </section>


<!-- ------------------------Offer------------------------- -->


    <div class="offer">
        <div class="small-container">
            <div class="row">
                <div class="col-2">
                    <a href="product-0.jsp">         <img src="images/add.jpg" class="offer-img"></a>
                </div>
                <div class="col-2" id="change">
                    <h6>Exclusively Available on SearchEasy</h6>
                    <br>
                    <h1>Apple iPhone8</h1>
                    <small>Space Grey, 64GB ROM , 11.94cm (4.7inch) Retina HD Display, 12MP Rear Camera|7MP Front Camera, iOS 13 Compatible</small>
                    <a href="product-0.jsp" class="btnnn"><strong>Buy Now &#8594;</strong></a>
                </div>
            </div>
        </div>
    </div>


<!-- -----------------------Website feautures------------------------- -->


    <section class="website-features">
        <div class="container">
            <div class="row">
                <div class="col-md-3 feature-box">
                    <img src="images/mark1.png">
                    <div class="featured-text">
                        <p><b>100% Original Items</b> are available at SearchEasy</p>
                    </div>
                </div>
                <div class="col-md-3 feature-box">
                    <img src="images/mark2.png">
                    <div class="featured-text">
                        <p><b>Return within 30 days</b> of receiving your order.</p>
                    </div>
                </div>
                <div class="col-md-3 feature-box">
                    <img src="images/mark4.jpg">
                    <div class="featured-text">
                        <p><b>Get free delivery for every</b> order on more than price.</p>
                    </div>
                </div>
                <div class="col-md-3 feature-box">
                    <img src="images/mark5.jpg">
                    <div class="featured-text">
                        <p><b>Pay Online through multiple</b> options (card/Net banking).</p>
                    </div>
                </div>
            </div>
        </div> 

    </section>


    <!-- --------------------------Footer--------------------------------- -->

    <section class="footer">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-3">
                    <h1>Useful Links</h1>
                    <p>Privacy Policy</p>
                    <p>Terms of Use</p>
                    <p>Return Policy</p>
                    <p>Discount Coupons </p>
                </div>

                <div class="col-md-3">
                    <h1>SearchEasy</h1>
                    <p>About Us</p>
                    <p>Conatct Us</p>
                    <p>Career</p>
                    <p>Affiliate</p>
                </div>

                <div class="col-md-3">
                    <h1>Follow Us On</h1>
                 <a href="https://www.facebook.com" >    
                     <p class="color-change"><i class="fa fa-facebook-official"></i>Facebook</p>
                 </a>
                      <a href="https://twitter.com/login" class="twitter-btn">
                    <p><i class="fa fa-twitter"></i>Twitter</p>
                    </a>
                     <a href="https://www.instagram.com/accounts/login" class="instagram-btn">
                    <p><i class="fa fa-instagram"></i>Instagram</p>
                    </a>
                   <a href="https://www.youtube.com" class="youtube-btn">
                    <p><i class="fa fa-youtube-play"></i>Youtube</p>
                   </a>
                </div>

                <div class="col-md-3 footer-image">
                    <h1>Download App</h1>
                    <img src="images/lastimg.png">
                </div>
            </div>
            <hr>
            <h3 class="endd">SearchEasy <i class="fa fa-search"></i></h3>
        </div>

    </section>

    

    <script>
        function openmenu()
        {
            document.getElementById("side-menu").style.display="block";
            document.getElementById("menu-btn").style.display="none";
            document.getElementById("close-btn").style.display="block";
        }

        function closemenu()
        {
            document.getElementById("side-menu").style.display="none";
            document.getElementById("menu-btn").style.display="block";
            document.getElementById("close-btn").style.display="none";
        }

    </script>
    </body>
</html>
