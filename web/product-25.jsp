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
    <title>Acer Swift 7 Core i5</title>
    <link rel="stylesheet" href="css/product15.css">
     <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="script/Add_To_Cart.js">
        
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
</head>
<body>
     <%@include file="Common_modals.jsp" %>
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
                        <li><a href="#"><i class="fa fa-window-maximize"></i> Orders</a></li>
                        <li><a href="ExamServlet?op=3"><i class="fa fa-sign-out"></i>Log Out</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="#"><i class="fa fa-sign-in"></i>More</a>
            
                <div class="sub-menu2">
                    <ul>
                        <li><a href="Seller-StartPage.jsp"><i class="fa fa-shopping-cart"></i>Sell on SearchEasy</a></li>
                        <li><a href="#"><i class="fa fa-gift"></i>24x7 Customer Care</a></li>
                    </ul>
                </div>
            
            </li>

          <li><a href="#" data-toggle="modal" data-target="#cart"><i class="fa fa-shopping-basket"></i><span class="cart-items">( 0 )</span></a></li>
        </ul>
    </div>
    </div>
            
            <!-- ------------------------Product------------------------------------ -->


            <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <div class="pr">
                            <img src="images/laptop12.jpeg" id="ProductImg">
                        <div class="small-img-row" id="change1">
                            <div class="small-img-col">
                                <img src="images/laptop12.jpeg" width="100px" height="70px" class="change3" id="change4">
                            </div>
                            <div class="small-img-col">
                                <img src="images/laptop12.1.jpeg" width="100px" height="70px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/laptop12.2.jpeg" width="100px" height="70px" class="change3">
                            </div>
                            <div class="small-img-col">
                                <img src="images/laptop12.3.jpeg" width="100px" height="70px" class="change3">
                            </div>
                        </div>
                    
                        </div>
                    </div>
                </div>
            </div>    
                <div class="change">
                        <a href="Electronics-2.jsp"><p class="responsive1">Electronics / Mobiles</p></a>
                        <h3 class="responsive">Acer Swift 7 Core i5 7th Gen Thin and Light Laptop </h3>
                        <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <h4 class="rate"><strong>&#8377; 72,990</strong></h4>
                    <p class="avail"><b>Availability:</b> In Stock</p>
                    <p class="quant"><b>Quantity: </b><input type="number" value="1"></p>
                    
                       
                     <%
                            String ptitle="",pid="";
                            int pprice=0;
                            ResultSet rs=DatabaseBean.executeQuery("select pid,ptitle,pprice from product where pid='p25'");
                            while(rs.next())
                            {
                                pid=rs.getString("pid");
                                ptitle=rs.getString("ptitle");
                                pprice=rs.getInt("pprice");
                              
                              
                            }     
                            
                    %>
                    
                   
                    
                   <a href="" class="btnn" onclick="add_to_cart('<%= pid %>','<%=ptitle%>',<%=pprice%>)"><b>Add to cart</b></a>   
                   
                   
                    <h5 class="down1"><b>Product description:</b></h5>
                    <p>Acer Swift 7 Core i5 7th Gen - (8 GB/256 GB SSD/Windows 10 Home) SF713-51 Thin and Light</p>
                     <p class="down">Laptop  (13.3 inch, Black, 1.125 kg, With MS Office), Stylish & Portable Thin and Light Laptop, 13.3</p> 
                     <p class="down">, inch Full HD LED Backlit IPS Display, Finger Print Sensor for Faster System Access.</p> 
                </div>
                


                <!-- -----------------------------------Related products-----------------------------  -->

   <%@include file="Related_Products_Laptop.jsp" %>


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
                <img src="lastimg.png">
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