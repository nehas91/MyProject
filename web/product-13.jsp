<%@page import="com.project.DatabaseBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realme X2 Pro</title>
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
</head>
<body>
   <%@include file="Navbar.jsp" %>
            <!-- ------------------------Product------------------------------------ -->


            <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <div class="pr">
                        <img src="images/phone9.jpeg" id="ProductImg">
                        <div class="small-img-row">
                            <div class="small-img-col">
                                <img src="images/phone9.jpeg" width="50px" height="100px" class="change3" id="change4">
                            </div>
                            <div class="small-img-col">
                                <img src="images/phone9.1.jpeg" width="50px" height="100px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/phone9.2.jpeg" width="40px" height="100px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/phone9.3.jpeg" width="50px" height="100px" class="change3">
                            </div>
                        </div>
                    
                        </div>
                    </div>
                </div>
            </div>    
                <div class="change">
                     <a href="Electronics-1.jsp"><p class="responsive1">Electronics / Mobiles</p></a>
                        <h3 class="responsive">Realme X2 Pro (Neptune Blue, 128 GB) (8 GB RAM)</h3>
                        <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h4 class="rate"><strong>&#8377; 31,999</strong> <strike class="ike"><small class="change1">&nbsp;&#8377; 34,999</small></strike><small class="change2"><b>&nbsp; 9% off</b></small></h4>
                    <p class="avail"><b>Availability:</b> In Stock</p>
                    <p class="quant"><b>Quantity: </b><input type="number" value="1"></p>
                    
                    
                    
                     <%
                            String ptitle="",pid="";
                            int pprice=0;
                            ResultSet rs=DatabaseBean.executeQuery("select pid,ptitle,pprice from product where pid='p13'");
                            while(rs.next())
                            {
                                pid=rs.getString("pid");
                                ptitle=rs.getString("ptitle");
                                pprice=rs.getInt("pprice");
                              
                              
                            }     
                            
                    %>
                    
                   
                    
                   <a href="" class="btnn" onclick="add_to_cart('<%= pid %>','<%=ptitle%>',<%=pprice%>)"><b>Add to cart</b></a>   
                   
                   
                    <h5 class="down1"><b>Product description:</b></h5>
                    <p>Realme X2 Pro (Neptune Blue, 128 GB) (8 GB RAM), 16.51 cm (6.5 inch) Full HD+ Display, 64MP + </p>
                     <p class="down">13MP + 8MP + 2MP | 16MP Front Camera, 4000 mAh Battery, Qualcomm Snapdragon 855 Plus</p> 
                     <p class="down">Processor, 90 Hz Ultra Smooth Display , 50W Super Vooc Flash Charge, 20X Hybrid Zoom.</p> 
                </div>
                


                <section class="features-categories">
                    <div class="container">
                        <h2 class="title">Related Products</h2>
                        <div class="row">
                            <div class="col-md-3 feature-box5">
                                <a href="product-3.jsp"><img src="images/phone1.jpeg"></a>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                
                                <div class="caption1">
                                <h6 class="change6">Samsung Galaxy S10 Lite</h6>
                                <h6 class="price">&#8377; 53,999</h6>
                                </div>
                                
                            </div>
                            <div class="col-md-3 feature-box6">
                                <a href="product-4.jsp"><img src="images/phone2.jpeg"></a>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="caption1">
                                <h6 class="shift">Vivo X50 Pro</h6>
                                <h6 class="price">&#8377; 49,990</h6>
                                </div>
                            </div>
                            <div class="col-md-3 feature-box7">
                                <a href="product-5.jsp"><img src="images/phone3.jpeg"></a>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="caption1">
                                <h6 class="change5">Realme6 Comet Blue</h6>
                                <h6 class="price">&#8377; 15,999</h6>
                                </div>
                            </div>
                            <div class="col-md-3 feature-box8">
                                <a href="product-6.jsp"><img src="images/phone4.jpeg"></a>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="caption1">
                                <h6 class="shift">OPPO F11 Pro</h6>
                                <h6 class="price">&#8377; 17,990</h6>
                                </div>
                            </div>
                            
                        </div>
                    </di>
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





    
                <!-- -------------------js for product  gallery----------------------------- -->
        <script>

            var ProductImg = document.getElementById("ProductImg");
            var change3 = document.getElementsByClassName("change3");

            change3[0].onclick = function()
            {
                ProductImg.src = change3[0].src;
            }
            change3[1].onclick = function()
            {
                ProductImg.src = change3[1].src;
            }
            change3[2].onclick = function()
            {
                ProductImg.src = change3[2].src;
            }
            change3[3].onclick = function()
            {
                ProductImg.src = change3[3].src;
            }




        </script>         


</body>
</html>