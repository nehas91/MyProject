<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SearchEasy</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/SellEasy.css">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://kit.fontawesome.com/6e66c93b0c.js" crossorigin="anonymous"></script>
        <%@include file="Common_Login_modal.jsp" %>
        <%@include file="Common_Servies_modal.jsp" %>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
    </head>
    <body>
        
        <div class="top-navbar">
            <div class="search-box">
                <img src="images/log2.jpeg" class="logo">
            </div>
            <div class="menu-bar">
                <ul>
                    <li><a href="#" data-toggle="modal" data-target="#c"><i class="fa fa-briefcase"></i>Services</a></li>
                    <li><a href="Seller-Registration.jsp"><i class="fa fa-user-plus"></i>Sign Up</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#ht"><i class="fa fa-sign-in"></i>Login</a></li>
                </ul>
            </div>
        </div>
        <section class="header">

            <div class="slider">

                <div id="slider" class="carousel slide carousel-fade" data-ride="carousel" data-interval="3000">
                    <div class="carousel-inner" >
                        <div class="carousel-item active">
                            <img  height="600" src="images/StartWithSellEasyCroped.png" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img height="600" src="images/ecomerce.jpg" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img height="600" src="images/sell.jpeg" class="d-block w-100" >
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
        <br>
        <br>
        <div style="margin-top: 2%;" align="centre">
            <a href="Seller-Registration.jsp">   <button class="btn" style="background-color: #33ffff;">Explore Now</button></a>
            <br>
            <br>
         
        </div>
        
        <br>
        <br>
        <section class="feature">
            <div style="margin: 5%; text-align: center;" align="centre">
                <h3 class="chead">-: Customer Blogs :-</h3>
            </div>
            <div style="margin-top: 5%;">
                <article class="adv">
                        <div class="adimg">
                            <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg" />  
                        </div>
                        <div>
                            <p class="cblog">"I joined SearchEasy in 2019 and today I own one of   the most successfull brands in my category".
                            </p>
                            <b style="margin-left: 48px;">Hitesh Tilwani, Bhopal(M.P) </b>
                            
                        </div>                  
                </article>
                <article class="adv">
                    <div class="adimg">
                        <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg" />  
                    </div>
                    <div>
                        <p class="cblog">
                            "With the support of SeaechEasy , I was able to support 20 artisans from Jaipur."
                            <br>
                        </p>
                        
                        <b style="margin-left: 48px;">Manik Kapoor, Uthan Jaipur</b>
                    </div>
                </article>
                
                <article class="adv">
                    <div class="adimg">
                        <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg" />
                    </div>
                    <div>
                        <p class="cblog">
                            "We have a total 200000 artisans and truly speaking, their craftsmanship has got recognition through Flipkart."</p>
                        <b style="margin-left: 4px;">
                            Hitesh Gyanchandani,Bhopal(M.P)
                        </b>
                    </div>
                
                </article>
                <article class="adv">
                    <div class="adimg">
                        <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg" />
                    </div>
                    <div>
                        <p  class="cblog">
                            "We have a total ~200000 artisans and truly speaking, their craftsmanship has got recognition through Flipkart."</p>
                        <b style="margin-left: 48px;">
                            Nisha, Hazaribag Jharkhand
                        </b>
                    </div>
                
                </article>
                <article class="adv">
                    <div class="adimg">
                        <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg"/>
                    </div>
                    <div>
                        <p class="cblog">
                            "Around 20 weavers work for me & I am looking forward to generating employment for my weavers by growing my business 
                        </p>
                        <b style="margin-left: 88px;">
                           Miss. Puja, Roja Sarees
                        </b>                  
                        
                    </div>
                
                </article><article class="adv">
                    <div class="adimg">
                        <img class="icon" alt="Mr. Hitest Tilwani,Anand Sarees" src="images/hitu.jpg"/>
                    </div>
                    <div>
                        <p class="cblog">
                            "Around 20 weavers work for me & I am looking forward to generating employment for my weavers by growing my business 
                        </p>
                        <b  style="margin-left: 88px;">
                                Miss. Puja, Roja Sarees
                        </b>
                        
                        
                    </div>
                
                </article>
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
                 <a href="https://www.facebook.com" >    
                     <p class="color-change"><i class="fa fa-facebook-official"></i>Facebook</p>
                 </a>
                      <a href="https://twitter.com/login" class="twitter-btn">
                          <p class="color-change"><i class="fa fa-twitter"></i>Twitter</p>
                    </a>
                     <a href="https://www.instagram.com/accounts/login" class="instagram-btn">
                         <p class="color-change"><i class="fa fa-instagram"></i>Instagram</p>
                    </a>
                   <a href="https://www.youtube.com" class="youtube-btn">
                       <p class="color-change"><i class="fa fa-youtube-play"></i>Youtube</p>
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


    </body>
</html>
