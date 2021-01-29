<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SearchEasy</title>
    <link rel="stylesheet" href="css/test11.css">
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



            <section class="sports-items">
                <div class="container">
                    <div class="sport-box">
                        <div class="title-style text-center">
                            <h1>Sports Items:-</h1>
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
                                <a href="product-119.jsp">    <img src="images/advertise93.jpg"> </a>

                            </div>
                        </div>
                            <div class="col-md-3">
                                <div class="image2">
                                    <a href="product-122.jsp"><img src="images/advertise94.png"></a>
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
                            <img src="images/symbol75.png" id="krx">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol76.1.jpg" id="kobo">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol82.1.jpg" id="kore">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol78.1.jpg" id="starx">
            
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol79.1.jpg" id="powermax">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol80.1.jpg" id="adrenex">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol81.1.jpg" id="reach">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol77.jpg" id="kakss">
            
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
                <a href="product-113.jsp"><img src="images/homegym1.jpeg" id="homegym1"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>

                <div class="caption1">
                <h6 class="adi">KRX Combo 3-WB Home Gym Kit</h6>
                <h6 class="price">&#8377; 3,629</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-114.jsp"><img src="images/homegym2.jpeg" id="homegym2"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="ske">Kobo SB-6 Spin Exercise Bike</h6>
                <h6 class="price">&#8377; 10,999</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-115.jsp"><img src="images/homegym4.jpeg" id="homegym3"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="bat">Snipper Gym Accessories/Kit</h6>
                <h6 class="price">&#8377; 1,999</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-116.jsp"><img src="images/homegym3.jpg" id="homegym4"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="adi">Kore PVC Home Gym Accessories</h6>
                <h6 class="price">&#8377; 3,749</h6>
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
                <a href="product-117.jsp"><img src="images/homegym5.jpeg" id="homegym5"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>

                <div class="caption1">
                <h6 class="one" id="star">Star X PVC Combo gym Fitness Kit</h6>
                <h6 class="price1"><strike class="str">&#8377; 1800</strike> 52% off</h6>
                <h6 class="price11">&#8377; 849</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-118.jsp"><img src="images/homegym6.jpeg" id="homegym6"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="one1">Reach AB-110 Exercise Bike-Black</h6>
                <h6 class="price2"><strike class="str">&#8377; 12,000</strike> 39% off</h6>
                <h6 class="price11">&#8377; 7,299</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-119.jsp"><img src="images/homegym7.jpeg" id="homegym7"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift1" id="power">Powermax Fitness Treadmill</h6>
                <h6 class="price3"><strike class="str">&#8377; 29,500</strike> 55% off</h6>
                <h6 class="price11">&#8377; 12,999</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-120.jsp"><img src="images/homegym8.jpeg" id="homegym8"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="three3">Adrenex Home Gym Combo</h6>
                <h6 class="price4"><strike class="str">&#8377; 9,999</strike> 64% off</h6>
                <h6 class="price11">&#8377; 3,539</h6>
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
                        <a href="product-119.jsp">     <img src="images/advertise93.jpg"></a>

                    </div>
                </div>
                    <div class="col-md-3">
                        <div class="image4">
                            <a href="product-113.jsp">     <img src="images/advertise95.jpg"> </a>
                        </div>
                    </div>   

                    <div class="col-md-3">
                        <div class="image5">
                            <a href="product-123.jsp"><img src="images/advertise96.jpg"></a>
    
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
                    <a href="product-121.jsp"><img src="images/homegym10.jpeg" id="homegym9"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
    
                    <div class="caption1">
                    <h6 class="medium" id="four4">Star X PVC Home Gym Combo</h6>
                    <h6 class="price">&#8377; 3,999</h6>
                    </div>
                    
                </div>
                <div class="col-md-3 feature-box6">
                    <a href="product-122.jsp"><img src="images/homegym9.jpeg" id="homegym10"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell2">KAKSS Fixed Weight Dumbbells</h6>
                    <h6 class="price">&#8377; 6,999</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box7">
                    <a href="product-123.jsp"><img src="images/homegym11.jpeg" id="homegym11"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell3">L'AVENIR Weight Dumbbell</h6>
                    <h6 class="price">&#8377; 5,499</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box8">
                    <a href="product-124.jsp"><img src="images/homegym12.jpg" id="homegym12"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 class="shift">Kore PVC Home Gym Set</h6>
                    <h6 class="price">&#8377; 2,558</h6>
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
                            <a href="product-118.jsp">    <img src="images/advertise99.jpeg"> </a>
    
                        </div>
                    </div>
                        <div class="col-md-3">
                            <div class="image4">
                                <a href="product-122.jsp">     <img src="images/advertise94.png"> </a>
                            </div>
                        </div>   
    
                        <div class="col-md-3">
                            <div class="image5">
                                <a href="product-120.jsp"> <img src="images/advertise97.jpeg"></a>
        
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