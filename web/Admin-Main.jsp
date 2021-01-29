<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<%@page import="com.project.CategoryBean"%>
<%@page import="com.project.OrdersBean"%>
<%@page import="com.project.DatabaseBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project.SessionBean"%>



<!DOCTYPE html>
<html lang ="en" dir = "ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SearchEasy Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/admin.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <style>
            * {box-sizing: border-box}
            body {font-family: Verdana, sans-serif; margin:0}


            .btn{
                height: 0.5%;
                width: 30%;
                font-weight: 800;
                background-color: #33ffff;
                text-align: center;
                border-radius: 1%;
                margin-left: 40%;
                padding: 22px;
            }

            .column {
                float: left;
                width: 25%;
                padding: 0 10px;
            }


            /* Style the counter cards */
            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                padding: 16px;
                text-align: center;
                background-color: #f1f1f1;
            }

            /* Slideshow container */
            .slideshow-container {
                position: relative;
                background: #f1f1f1f1;
            }

            /* Slides */
            .mySlides {
                display: none;
                padding: 80px;
                text-align: center;
            }

            /* Next & previous buttons */
            .prev, .next {
                cursor: pointer;
                position: absolute;
                top: 50%;
                width: auto;
                margin-top: -30px;
                padding: 16px;
                color: #888;
                font-weight: bold;
                font-size: 20px;
                border-radius: 0 3px 3px 0;
                user-select: none;
            }

            /* Position the "next button" to the right */
            .next {
                position: absolute;
                right: 0;
                border-radius: 3px 0 0 3px;
            }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
                color: white;
            }

            /* The dot/bullet/indicator container */
            .dot-container {
                text-align: center;
                padding: 20px;
                background: #ddd;
            }

            /* The dots/bullets/indicators */
            .dot {
                cursor: pointer;
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

            /* Add a background color to the active dot/circle */
            .active, .dot:hover {
                background-color: #717171;
            }

            /* Add an italic font style to all quotes */
            q {font-style: italic;}

            /* Add a blue color to the author */
            .author {color: cornflowerblue;}



        </style>
    </head>
    <body>
        <nav>
            <input type="checkbox" id="check">
            <label for="ckeck" class="checkbtn">
                <i class="fas fa-bars"></i>
            </label>
            <label class="logo">Search Easy</label>
            <ul>

                <li><a class="active" href="Admin-Main.jsp">Home</a></li>
                <li><a href="Admin-Categories.jsp">categories</a></li>
                <li><a href="Admin-Orders.jsp">Orders</a></li>
                <li><a href="Admin-Users.jsp">Users</a></li>
            </ul>
        </nav>


        <%

            ArrayList<SessionBean> al = new ArrayList();

            out.print("<table>");
            out.println("<thead>");
            String userId = "", userName = "", userEmail = "", userPhone = "", userAddress = "", userPassword = "";
            String sql = String.format("select * from users");
            try {
                ResultSet rs = DatabaseBean.executeQuery(sql);
                while (rs.next()) {

                    userId = rs.getString("userId");
                    userName = rs.getString("userName");
                    userEmail = rs.getString("userEmail");
                    userPhone = rs.getString("userPhone");
                    userAddress = rs.getString("userAddress");
                    userPassword = rs.getString("userPassword");
                    SessionBean sb = new SessionBean(userId, userName, userEmail, userPhone, userAddress, userPassword);
                    al.add(sb);
                    //         al.add(rs);

                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Admin-Users" + e.getMessage());
            }
            //out.print("<html>");


        %>


        <%       ArrayList<OrdersBean> al1 = new ArrayList();

            String dated = "", userid = "", emailid = "", name = "", address = "", pdesc = "";
            int orderid = 0, totalprice = 0;
            String sql1 = String.format("select * from orders");
            try {
                ResultSet rs = DatabaseBean.executeQuery(sql1);
                while (rs.next()) {
                    dated = rs.getString("dated");
                    userid = rs.getString("userid");
                    emailid = rs.getString("emailid");
                    name = rs.getString("name");
                    address = rs.getString("address");
                    pdesc = rs.getString("pdesc");
                    orderid = rs.getInt("orderid");
                    totalprice = rs.getInt("totalprice");

                    OrdersBean ob = new OrdersBean(dated, userid, emailid, name, address, pdesc, orderid, totalprice);

                    al1.add(ob);

                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Orders" + e.getMessage());
            }
            //out.print("<html>");


        %>


        <%      ArrayList<CategoryBean> al2 = new ArrayList();

            String categoryId = "", categoryTitle = "", categoryDescription = "";
            String sql2 = String.format("select * from category");
            try {
                ResultSet rs = DatabaseBean.executeQuery(sql2);
                while (rs.next()) {
                    categoryId = rs.getString("categoryId");
                    categoryTitle = rs.getString("categoryTitle");
                    categoryDescription = rs.getString("categoryDescription");
                    CategoryBean cb = new CategoryBean(categoryId, categoryTitle, categoryDescription);
                    al2.add(cb);
                    //         al.add(rs);

                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, "Admin-Categories" + e.getMessage());
            }
            //out.print("<html>");


        %>





        <div class="slideshow-container">

            <div class="mySlides">
                <q> If you do build a great experience, customers tell each other about that.<br/> Word of mouth is very powerful.</q><br/>
                <p class="author">-Jeff Bezos </p> 
                <p style="color: #ff9933">   CEO of Amazon</p>
            </div>

            <div class="mySlides">
                <q>Strategic alignment with funding partners is very important.<br/> In the long term, it matters a lot.</q><br/>
                <p class="author">- Sachin Bansal</p>
                <p style="color: #3333ff">CEO at flipkart</p>
            </div>

            <div class="mySlides">
                <q>What makes eBay successful--the real value and the real power at eBay--is the community. It's the buyers and sellers coming together and forming a marketplace.</q><br/>
                <p class="author">- Pierre Omidyar </p>
                <p style="color: #ff6666">The founder of eBay and First Look Media</p>
            </div>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>

        </div>

        <div class="dot-container">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
        </div>





        <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
        </script>


        <div style="margin-top: 2%;" align="centre">
            <a href="MainPage.jsp">   <button class="btn" style="background-color: #33ffff;">Continue As User</button></a>
            <br>
            <br>

        </div>
        <br>


        <div class="row">
            <div class="column">
                <div class="card">
                    <img src="images/usericon.png" style="height: 280px;">
                    <h3>Users</h3>
                    <p><%=al.size()%></p>

                </div>
            </div>

            <div class="column">
                <div class="card">
                    <img src="images/categories1.jpg" style="height: 280px;">
                    <h3>Categories</h3>
                    <p class="badge"><%=al2.size()%></p>
                </div>
            </div>
                
            <div class="column">
                <div class="card">
                    <img src="images/Orders1.jpg" style="height: 280px;">
                    <h3>Orders</h3>
                    <p><%=al1.size()%></p>

                </div>
            </div>




        </div>
                    
                    
               <br/>
           

              
             
    </body>
</html>