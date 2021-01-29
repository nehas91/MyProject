<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Covid19 Care</title>
    <link rel="stylesheet" href="css/Covid19 Care.css">
     <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="script/Add_To_Cart.js"></script>
         <%@include file="Common_modals.jsp" %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
</head>
<body>
  <jsp:useBean class="com.project.SessionBean" id="sb" scope="session"  />
    <div class="top-navbar">
        <div class="search-box">
            <img src="images/log2.jpeg" class="logo">
            <input type="text" class="form-control">
            <span class="input-group-text"><i class="fa fa-search" aria-hidden="true"></i></span>
        </div>
    <div class="menu-bar">
        <ul>
            <li><a href="#"><i class="fa fa-user"></i> <%=sb.getUserName()%></a>
                <div class="sub-menu1">
                    <ul>
                        <li><a href="MyProfile.jsp"><i class="fa fa-user-circle"></i> My Profile</a></li>
                        <li><a href="Orders.jsp"><i class="fa fa-window-maximize"></i> Orders</a></li>
                         <li><a href="ExamServlet?op=3"><i class="fa fa-sign-out"></i>Log Out</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#"><i class="fa fa-sign-in"></i>More</a>
                <div class="sub-menu2">
                    <ul>
                        <li><a href="Seller-StartPage.jsp"><i class="fas fa-briefcase"></i>Sell on SearchEasy</a></li>
                       
                    </ul>
                </div>
            </li>

           <li><a href="#" data-toggle="modal" data-target="#cart"><i class="fa fa-shopping-basket"></i><span class="cart-items">( 0 )</span></a></li>
        </ul>
    </div>
    </div>
            <div class="main-dropdown">

                <ul>
                    <li><a href="#">Electronics&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Electronics-1.jsp">Mobiles</a></li>
                                <li><a href="Electronics-2.jsp">Laptops</a></li>
                            </ul>
                        </div>    
                    </li>
                    <li><a href="#">Furnitures&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Furniture1.jsp">Sofa</a></li>
                                <li><a href="Furniture2.jsp">Beds</a></li>
                            </ul>
                        </div>                       
                    </li>
                    <li><a href="#">Footwears&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Footwear1.jsp">Shoes</a></li>
                                <li><a href="Footwear2.jsp">Sandals</a></li>
                            </ul>
                        </div>   
                    </li>
                    <li><a href="#">Covid19&nbsp;Care&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Covid19 Care-1.jsp">Masks</a></li>
                                <li><a href="Covid19 Care-2.jsp">Sanitizers</a></li>
                            </ul>
                        </div>   
                    </li>
                    <li><a href="Sports Items-1.jsp">Sports&nbsp;Items&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Sports Items-1.jsp">Cricket gears</a></li>
                                <li><a href="Sports Items-2.jsp">Home gyms</a></li>
                            </ul>
                        </div>   
                    </li>
                    <li><a href="#">Stationaries&nbsp;<small>v</small></a>
                        <div class="sub-menu3">
                            <ul>
                                <li><a href="Stationary-1.jsp">Notebooks</a></li>
                                <li><a href="Stationary-2.jsp">Pens</a></li>
                            </ul>
                        </div>   
                    </li>
                </ul>
            </div>



            <section class="footwears">
                <div class="container">
                    <div class="care-box">
                        <div class="title-style text-center">
                            <h1>Covid19 Care:-</h1>
                        </div>
                    </div>

                </div>

            </section>

            <!-- ---------------------------------Banner-------------------------------- -->

            <section class="feature">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="image">
                                <a href="product-77.jsp">   <img src="images/advertise64.jpg"> </a>

                            </div>
                        </div>
                            <div class="col-md-3">
                                <div class="image2">
                                    <a href="product-81.jsp"><img src="images/advertise70.jpg"></a>
                                </div>
                            </div>   
                        </div>
                    </div>
            </section>

<!-- ------------------------------------------Brands---------------------------------- -->

            <section class="website-features2">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 feature-box1">
                            <img src="images/symbol51.jpg" id="dettol">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol52.png" id="himalaya">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol53.png" id="dabur">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol54.jpg" id="lifebuoy">
            
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol55.jpg" id="medikar">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol56.jpg" id="savlon">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol57.jpg" id="nutri">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol58.png" id="biofresh">
            
                        </div>
                        
                    </div>

                </div> 
        
            </section>

<!-- --------------------------------------Featured categories--------------------------- -->



<section class="features-categories">
    <div class="container">
        <h2 class="title">Featured Products</h2>
        <div class="row">
            <div class="col-md-3 feature-box5">
                <a href="product-77.jsp"><img src="images/sanitizer1.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>

                <div class="caption1">
                <h6 class="det">Dettol Hand Sanitizer Bottle</h6>
                <h6 class="price">&#8377; 249</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-78.jsp"><img src="images/sanitizer2.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="him">Himalaya Hand Sanitizer Bottle</h6>
                <h6 class="price">&#8377; 225</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-79.jsp"><img src="images/sanitizer3.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="bat">Dabur Hand Sanitizer Bottle</h6>
                <h6 class="price">&#8377; 157</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-80.jsp"><img src="images/sanitizer4.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="det">Lifebuoy Total Hand Sanitizer</h6>
                <h6 class="price">&#8377; 218</h6>
                </div>
            </div>
            
        </div>
    </di>
    </section>

<!-- ---------------------------------On Sale-------------------------------- -->

<section class="features-categories">
    <div class="container">
        <h2 class="title" id="title2">On Sale</h2>
        <div class="row">
            <div class="col-md-3 feature-box5">
                <a href="product-81.jsp"><img src="images/sanitizer5.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>

                <div class="caption1">
                <h6 class="one" id="pum">Mediker Alcohol Hand Sanitizer</h6>
                <h6 class="price1"><strike class="str">&#8377; 250</strike> 40% off</h6>
                <h6 class="price11">&#8377; 150</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-82.jsp"><img src="images/sanitizer6.jpeg" id="sanitizer1"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="one1">Savlon Fresh Sanitizer Bottle</h6>
                <h6 class="price2"><strike class="str">&#8377; 300</strike> 28% off</h6>
                <h6 class="price11">&#8377; 216</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-83.jsp"><img src="images/sanitizer8.jpeg" id="sanitizer2"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift1" id="two2">NutriGlow NATURAL'S Sanitizer</h6>
                <h6 class="price3"><strike class="str">&#8377; 250</strike> 20% off</h6>
                <h6 class="price11">&#8377; 199</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-84.jsp"><img src="images/sanitizer9.jpeg" id="sanitizer3"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="three3">Biofresh Spray Hand Sanitizer</h6>
                <h6 class="price4"><strike class="str">&#8377; 750</strike> 20% off</h6>
                <h6 class="price11">&#8377; 599</h6>
                </div>
            </div>
            
        </div>
    </di>
    </section>


    <!-- ---------------------------------Banner2---------------------------------- -->

    <section class="feature2">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="image3">
                        <a href="product-77.jsp"> <img src="images/advertise64.jpg"></a>

                    </div>
                </div>
                    <div class="col-md-3">
                        <div class="image4">
                            <a href="product-87.jsp"><img src="images/advertise73.jpeg"></a>
                        </div>
                    </div>   

                    <div class="col-md-3">
                        <div class="image5">
                            <a href="product-78.jsp"><img src="images/advertise69.jpg"></a>
    
                        </div>
                </div>
            </div>
    </section>

    <!-------------------------- Best Selling-------------------------- -->

    <section class="features-categories">
        <div class="container">
            <h2 class="title" id="bestsell">Best Selling</h2>
            <div class="row">
                <div class="col-md-3 feature-box5">
                    <a href="product-85.jsp"><img src="images/sanitizer10.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
    
                    <div class="caption1">
                    <h6 class="medium" id="four4">Lifebuoy Hand Sanitizer Bottle</h6>
                    <h6 class="price">&#8377; 210</h6>
                    </div>
                    
                </div>
                <div class="col-md-3 feature-box6">
                    <a href="product-86.jsp"><img src="images/sanitizer11.jpeg" id="sanitizer4"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell2">Dabur Hand Rub Sanitizer Bottle</h6>
                    <h6 class="price">&#8377; 245</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box7">
                    <a href="product-87.jsp"><img src="images/sanitizer12.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell3">NutriGlow NATURAL'S Sanitizer</h6>
                    <h6 class="price">&#8377; 199</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box8">
                    <a href="product-88.jsp"><img src="images/sanitizer13.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 class="shift">Biofresh Spray Hand Sanitizer</h6>
                    <h6 class="price">&#8377; 399</h6>
                    </div>
                </div>
                
            </div>
        </di>
        </section>

        <!-- --------------------------Banner3---------------------------- -->

        <section class="feature2">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="image3">
                            <a href="product-81.jsp"> <img src="images/advertise70.jpg"></a>
    
                        </div>
                    </div>
                        <div class="col-md-3">
                            <div class="image4">
                                <a href="product-86.jsp">  <img src="images/advertise74.jpg">  </a>
                            </div>
                        </div>   
    
                        <div class="col-md-3">
                            <div class="image5">
                                <a href="product-77.jsp">  <img src="images/advertise62.jpg">
        
                            </div>
                    </div>
                </div>
        </section>


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
                <p><i class="fa fa-facebook-official"></i>Facebook</p>
                <p><i class="fa fa-twitter"></i>Twitter</p>
                <p><i class="fa fa-instagram"></i>Instagram</p>
                <p><i class="fa fa-youtube-play"></i>Youtube</p>
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







</body>
</html>