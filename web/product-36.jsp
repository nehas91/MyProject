<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.DatabaseBean"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bharat Lifestyle Sofa Set</title>
    <link rel="stylesheet" href="css/Product_furniture1.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
</head>
<body>
    <%@include file="Navbar_furniture.jsp" %>
            
            <!-- ------------------------Product------------------------------------ -->


            <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <div class="pr">
                            <img src="images/sofa11.jpg" id="ProductImg">
                        <div class="small-img-row" id="change1">
                            <div class="small-img-col">
                                <img src="images/sofa11.jpg" width="90px" height="80px" class="change3" id="change4">
                            </div>
                            <div class="small-img-col">
                                <img src="images/sofa11.1.jpg" width="110px" height="70px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/sofa11.2.jpg" width="90px" height="70px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/sofa11.3.jpg" width="90px" height="70px" class="change3">
                            </div>
                        </div>
                    
                        </div>
                    </div>
                </div>
            </div>    
                <div class="change">
                        <a href="Furniture1.jsp"> <p class="responsive1">Furnitures / Sofa</p></a>
                        <h3 class="responsive">Bharat Lifestyle Sagittarius Fabric 3 + 1 + 1 Seater Sofa Set</h3>
                        <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <h4 class="rate"><strong>&#8377; 33,999</strong></h4>
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
                    
                   
                    
                   <a href="" class="btnn" onclick="add_to_cart('p36','Bharat Lifestyle Sofa Set',33999)"><b>Add to cart</b></a>   
                                       <h5 class="down1"><b>Product description:</b></h5>
                    <p>Bharat Lifestyle Sagittarius Fabric 3 + 1 + 1 Seater Sofa Set (Cream) Length - 3 Seater ? 74.80 inches, 1 Seater</p>
                     <p class="down"> ? 34.64 inches, Depth ? 3 Seater & 1 Seater ? 34.25 inches, Height ? 3 Seater & 1 Seater ? 32.28 inches, Seating</p> 
                     <p class="down"> Height -3 Seater & 1 Seater ? 15.74 inches.</p> 
                </div>
                


                <!-- -----------------------------------Related products-----------------------------  -->
  <%@include file="Related_Products_Bed.jsp" %> 
              

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