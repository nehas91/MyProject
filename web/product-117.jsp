<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Star X PVC Combo gym Fitness Kit</title>
    <link rel="stylesheet" href="css/Product_covidcare1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
</head>
<body>
    <%@include file="Navbar_Sports.jsp" %>
            
            <!-- ------------------------Product------------------------------------ -->


            <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <div class="pr">
                        <img src="images/homegym5.jpeg" id="ProductImg8">
                        <div class="small-img-row" id="c4">
                            <div class="small-img-col">
                                <img src="images/homegym5.jpeg" width="70px" height="70px" class="change3" id="change4">
                            </div>
                            <div class="small-img-col">
                                <img src="images/homegym5.1.jpeg" width="70px" height="50px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/homegym5.2.jpeg" width="70px" height="70px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/homegym5.3.jpeg" width="70px" height="70px" class="change3">
                            </div>
                        </div>
                    
                        </div>
                    </div>
                </div>
            </div>    
                <div class="change" id="c10">
                    <a href="Sports Items-2.jsp">  <p class="responsive1">Sports Items / Home gyms</p></a>
                        <h3 class="responsive">Star X PVC Dumbbells Set COMBO Gym & Fitness Kit</h3>
                        <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h4 class="rate"><strong>&#8377; 849</strong> <strike class="ike"><small class="change1">&nbsp;&#8377; 1,800</small></strike><small class="change2"><b>&nbsp; 52% off</b></small></h4>
                    <p class="avail"><b>Availability:</b> In Stock</p>
                    <p class="quant"><b>Quantity: </b><input type="number" value="1"></p>
                    
                       <a href="" class="btnn" onclick="add_to_cart('p117','Star X PVC Combo gym Fitness Kit',849)"><b>Add to cart</b></a>   
                    
                    <h5 class="down1"><b>Product description:</b></h5>
                    <p>Star X PVC Dumbbells Set COMBO Gym & Fitness Kit, Sport Type: Gym & Fitness, Color: Black, Width: 14 cm, Height: 8 cm</p>
                     <p class="down">, Depth: 6 cm, Sales Package: 1 Pair Dumbbell Rod, 8kg Hexa Weight Plate, Skipping Rope, Gripper, Gym Gloves, 7 Days</p> 
                     <p class="down">Replacement Policy, Cash on Delivery available.</p> 
                </div>
                


                <!-- -----------------------------------Related products-----------------------------  -->

                <%@include file="Related_Products_Home_gym.jsp" %>

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





    
                <!-- -------------------js for product  gallery----------------------------- -->
        <script>

            var ProductImg8 = document.getElementById("ProductImg8");
            var change3 = document.getElementsByClassName("change3");

            change3[0].onclick = function()
            {
                ProductImg8.src = change3[0].src;
            }
            change3[1].onclick = function()
            {
                ProductImg8.src = change3[1].src;
            }
            change3[2].onclick = function()
            {
                ProductImg8.src = change3[2].src;
            }
            change3[3].onclick = function()
            {
                ProductImg8.src = change3[3].src;
            }




        </script>         


</body>
</html>