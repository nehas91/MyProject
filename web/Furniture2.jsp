<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SearchEasy</title>
    <link rel="stylesheet" href="css/Furniture.css">
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
                    <li><a href="#">Sports&nbsp;Items&nbsp;<small>v</small></a>
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


            <section class="furnitures">
                <div class="container">
                    <div class="furni-box">
                        <div class="title-style text-center">
                            <h1>Furnitures:-</h1>
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
                                <a href="product-44.jsp">  <img src="images/advertise39.jpg"></a>

                            </div>
                        </div>
                            <div class="col-md-3">
                                <div class="image2">
                                    <a href="product-42.jsp"><img src="images/advertise35.jpg"></a>
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
                            <img src="images/symbol32.jpg" id="htown">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol33.png" id="space">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol23.jpg" id="royal">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol24.jpg" id="durian">
            
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol36.jpg" id="wake">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol34.jpg" id="homee">
                        </div>
                        <div class="col-md-3 feature-box" id="urban2">
                            <img src="images/symbol29.png" id="urban">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol27.png" id="kurlon">
            
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
                <a href="product-41.jsp"><img src="images/bed1.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>

                <div class="caption1">
                <h6 class="fur" id="fur1">HomeTown Alex Queen Box Bed </h6>
                <h6 class="price">&#8377; 17,190</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-42.jsp"><img src="images/bed2.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="sp">Spacewood King Hydraulic Bed</h6>
                <h6 class="price">&#8377; 29,790</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-43.jsp"><img src="images/bed3.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="fur" id="ro">RoyalOak Flint Wood Queen Bed</h6>
                <h6 class="price">&#8377; 18,820</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-44.jsp"><img src="images/bed4.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="du">Durian King Box Hydraulic Bed</h6>
                <h6 class="price">&#8377; 59,280</h6>
                </div>
            </div>
            
        </div>
    </div>
    </section>

<!-- ---------------------------------On Sale-------------------------------- -->

<section class="features-categories">
    <div class="container">
        <h2 class="title" id="title2">On Sale</h2>
        <div class="row">
            <div class="col-md-3 feature-box5">
                <a href="product-45.jsp"><img src="images/bed5.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>

                <div class="caption1">
                <h6 class="one" id="onee">@home Nilkamal Queen Box Bed</h6>
                <h6 class="price1"><strike class="str">&#8377; 38,900</strike> 50% off</h6>
                <h6 class="price11">&#8377; 20,449</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-46.jsp"><img src="images/bed6.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="two">Urban Ladder King Box Bed</h6>
                <h6 class="price2"><strike class="str">&#8377; 60,797</strike> 20% off</h6>
                <h6 class="price11">&#8377; 48,747</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-47.jsp"><img src="images/bed9.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift1" id="three">Durian Queen Drawer Bed</h6>
                <h6 class="price3"><strike class="str">&#8377; 1,07,400</strike> 35% off</h6>
                <h6 class="price11">&#8377; 69,810</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-48.jsp"><img src="images/bed8.jpeg"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="four">RoyalOak Scorpius Queen Bed</h6>
                <h6 class="price4"><strike class="str">&#8377; 33,077</strike> 19% off</h6>
                <h6 class="price11">&#8377; 26,470</h6>
                </div>
            </div>
            
        </div>
    </div>
    </section>


    <!-- ---------------------------------Banner2---------------------------------- -->

    <section class="feature2">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="image3">
                        <a href="product-47.jsp">  <img src="images/advertise33.jpg"></a>

                    </div>
                </div>
                    <div class="col-md-3">
                        <div class="image4">
                            <img src="images/advertise38.jpg">
                        </div>
                    </div>   

                    <div class="col-md-3">
                        <div class="image5">
                            <a href="product-46.jsp"><img src="images/advertise34.jpg"></a>
    
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
                    <a href="product-49.jsp"><img src="images/bed7.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
    
                    <div class="caption1">
                    <h6 class="medium" id="five">HomeTown Wood Queen Box Bed</h6>
                    <h6 class="price">&#8377; 14,900</h6>
                    </div>
                    
                </div>
                <div class="col-md-3 feature-box6">
                    <a href="product-50.jsp"><img src="images/bed10.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell2">Spacewood Hydraulic Bed</h6>
                    <h6 class="price">&#8377; 21,690</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box7">
                    <a href="product-51.jsp"><img src="images/bed11.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell3">Wakefit Sheesham Queen Bed</h6>
                    <h6 class="price">&#8377; 15,000</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box8">
                    <a href="product-52.jsp"><img src="images/bed12.jpeg"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 class="shift">Kurlon Klassic Queen Box Bed</h6>
                    <h6 class="price">&#8377; 20,613</h6>
                    </div>
                </div>
                
            </div>
        </div>
        </section>

        <!-- --------------------------Banner3---------------------------- -->

        <section class="feature2">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="image3">
                            <a href="product-50.jsp">  <img src="images/advertise41.jpg"></a>
    
                        </div>
                    </div>
                        <div class="col-md-3">
                            <div class="image4">
                                <a href="product-45.jsp"><img src="images/advertise36.jpg"> </a>
                            </div>
                        </div>   
    
                        <div class="col-md-3">
                            <div class="image5">
                                <a href=""><img src="images/advertise37.jpg"></a>
        
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