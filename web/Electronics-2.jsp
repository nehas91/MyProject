<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronics</title>
    <link rel="stylesheet" href="css/Electronics.css">
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


            <section class="electronics">
                <div class="container">
                    <div class="electro-box">
                        <div class="title-style text-center">
                            <h1>Electronics:-</h1>
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
                                <a href="product-27.jsp"><img src="images/advertise13.jpg"></a>

                            </div>
                        </div>
                            <div class="col-md-3">
                                <div class="image2">
                                    <a href="product-19.jsp"><img src="images/advertise15.jpg"></a>
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
                            <img src="images/symbol12.jpg" id="hp">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol13.jpg">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol14.jpg" id="lenovo">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol15.png" id="acer">
            
                        </div>
                        
                    </div>

                    <div class="row">
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol16.png" id="asus">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol20.jpg" id="apple">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol18.png" class="honor" id="msi">
                        </div>
                        <div class="col-md-3 feature-box">
                            <img src="images/symbol19.jpg" class="poco">
            
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
                <a href="product-15.jsp"><img src="images/laptop2.jpeg" id="laptops"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>

                <div class="caption1">
                <h6 class="move">Asus VivoBook 14 Core i5</h6>
                <h6 class="price">&#8377; 49,990</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-16.jsp"><img src="images/laptop3.jpeg" id="laptops1"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="move1">HP Pavilion x360</h6>
                <h6 class="price">&#8377; 71,990</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-17.jsp"><img src="images/laptop4.jpeg" id="laptops2"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="move">Dell Inspiron 15 7000 Series</h6>
                <h6 class="price">&#8377; 79,990</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-18.jsp"><img src="images/laptop6.jpeg" id="laptops3"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="move2">Lenovo Ideapad S340</h6>
                <h6 class="price">&#8377; 56,990</h6>
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
                <a href="product-19.jsp"><img src="images/laptop1.jpeg" id="laptops4"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>

                <div class="caption1">
                <h6 class="poco1">Acer Predator Helios 300</h6>
                <h6 class="price1"><strike class="str">&#8377; 129,999</strike> 30% off</h6>
                <h6 class="price11">&#8377; 90,999</h6>
                </div>
                
            </div>
            <div class="col-md-3 feature-box6">
                <a href="product-20.jsp"><img src="images/laptop8.jpeg" id="laptops5"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="move4">MSI Modern 14 Core i7</h6>
                <h6 class="price2"><strike class="str">&#8377; 84,990</strike> 5% off</h6>
                <h6 class="price11">&#8377; 79,990</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box7">
                <a href="product-21.jsp"><img src="images/laptop9.jpeg" id="laptops6"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift1" id="move5">HP 15q Core i3</h6>
                <h6 class="price3"><strike class="str">&#8377; 36,740</strike> 2% off</h6>
                <h6 class="price11">&#8377; 35,740</h6>
                </div>
            </div>
            <div class="col-md-3 feature-box8">
                <a href="product-22.jsp"><img src="images/laptop7.jpeg" id="laptops7"></a>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <div class="caption1">
                <h6 class="shift" id="move3">Apple MacBook Pro Core i5</h6>
                <h6 class="price4"><strike class="str">&#8377; 192,390</strike> 10% off</h6>
                <h6 class="price11">&#8377; 173,990</h6>
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
                        <a href="product-22.jsp"><img src="images/advertise16.jpg" alt=""></a>

                    </div>
                </div>
                    <div class="col-md-3">
                        <div class="image4">
                            <a href="product-23.jsp"><img src="images/advertise19.jpg" alt=""></a>
                        </div>
                    </div>   

                    <div class="col-md-3">
                        <div class="image5">
                            <a href="product-16.jsp"><img src="images/advertise17.jpg" alt=""></a>
    
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
                    <a href="product-23.jsp"><img src="images/laptop10.jpeg" id="laptops8"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
    
                    <div class="caption1">
                    <h6>Dell G3 Series Core i5</h6>
                    <h6 class="price">&#8377; 89,650</h6>
                    </div>
                    
                </div>
                <div class="col-md-3 feature-box6">
                    <a href="product-24.jsp"><img src="images/laptop13.jpeg" id="laptops11"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="caption1">
                    <h6 class="shift" id="move1">Avita Liber Core i5</h6>
                    <h6 class="price">&#8377; 39,990</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box7">
                    <a href="product-25.jsp"><img src="images/laptop12.jpeg" id="laptops10"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 id="bestsell3">Acer Swift 7 Core i5</h6>
                    <h6 class="price">&#8377; 72,990</h6>
                    </div>
                </div>
                <div class="col-md-3 feature-box8">
                    <a href="product-26.jsp"><img src="images/laptop11.jpeg" id="laptops9"></a>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                    </div>
                    <div class="caption1">
                    <h6 class="shift" id="move1">Lenovo Ideapad S540</h6>
                    <h6 class="price">&#8377; 85,999</h6>
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
                            <a href="product-26.jsp"><img src="images/advertise20.jpg" alt=""></a>
    
                        </div>
                    </div>
                        <div class="col-md-3">
                            <div class="image4">
                                <a href="product-25.jsp"><img src="images/advertise22.jpg" alt=""></a>
                            </div>
                        </div>   
    
                        <div class="col-md-3">
                            <div class="image5">
                                <a href="product-18.jsp"><img src="images/advertise18.jpg" alt=""></a>
        
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