
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.project.Seller_pro_Bean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.DatabaseBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.Seller_SessionBean"
        session="true"%>
<html>
    <head>
  <title>Welcome in eExam</title>
        <meta charset="UTF-8">
        <!--Backward compatible with Internet Explorer 8.0-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--Responsive Apps, Size adjusted as per device size-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Add Bootstrap CSS Before any other custom css -->
       <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
       
       <style>
           .footer{
    margin-top: 50px;
    background: #000000;
    color: #fff;
}
.footer h1{
    font-size: 15px;
    margin: 25px 0;
}
.footer p{
    font-size:12px;
}

.footer .row .fa{
    padding-right: 20px;
    font-size: 15px;

}


.footer-image img{
    height: 120px;
    width: 120x;
    padding-bottom: 5px;
    margin-bottom: 50px;
}

.endd{
    padding-bottom: 20px;
}

.footer hr{
    margin-top: -20px;
    background-color: #ccc;
}
           
           
           
           

* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
</style>

  
  
   
<div class="navbar navbar-inverse">
            <!--Step II: Create a div with class container-fluid-->
            <div class="container-fluid">
                <!--Step III: Create a navbar-header-->
                <div class="navbar-header">
                    <!--Step IV: Create a Hidden Button that appears only on smaller screen-->

                    <button type="button" class="navbar-toggle pull-left" 
                            data-toggle="collapse" 
                            data-target="#mynavdiv">
                        <!--Step V: Create Hidden Icons inside Button-->
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <!--Step VII: Create a Home Button-->
                   
                    <a class="navbar-brand active"  >SeLLEasy App</a>
                </div>
                <!--Step VI: Sibiling of navbar-header with id mynavdiv-->
                <div class="collapse navbar-collapse" id="mynavdiv">
                    <ul class="nav navbar-nav">
                       
                        <!--Step VIII: Creating Drop Down Menu-->
                        <li>
                            <a href="Seller-Your_Shop.jsp" >Your Shop</a>
                            <!--Step IX: Create a Nested ul for Menu Items-->
                            <%--Logic added on 22-Jul to display dynamic menu--%>
                            
                        </li>
                        <li class="active"><ion-icon name="bag-handle-outline"></ion-icon><a href="Seller-Market.jsp">Market</a></li>
                        <li><a href="ExamServlet?op=8">Logout</a></li>
                    </ul>

                </div> 
            </div>

        </div>
 <%--End of Navbar--%>            
            
      
            
             <jsp:useBean class="com.project.Seller_SessionBean" id="ss" scope="session"  />
    <%  
    
    ArrayList<Seller_pro_Bean> al=new ArrayList();
  
     String username="",address="",dated="",pdesc="";
     int pid=0,userid=0,mobileno=0,price=0;
          String sql=String.format("select * from Sellerpro");
          try
          {
              ResultSet rs=DatabaseBean.executeQuery(sql);
             while(rs.next())
             { 
                   pid=rs.getInt("pid");
                   mobileno=rs.getInt("mobileno");
                   price=rs.getInt("price");
                    username=rs.getString("username");
                    address=rs.getString("address");
                    dated=rs.getString("dated");
                    pdesc=rs.getString("pdesc");
                    
                 
             Seller_pro_Bean ob=new Seller_pro_Bean(pid, userid, price, mobileno, dated, username, address, pdesc);
            
         al.add(ob);
                   
             }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(null, "Sellerpro" +e.getMessage());
          }
    //out.print("<html>");
    


  %>
  
  
  
  <div class="container" style="background-color: #ccccff;">

 <h1 style="text-align: center;font: 400;color:#3333ff;  ">Welcome! Seller To Sell-Easy Market</h1>
 <h3 style="text-align: center; color: #666666;">(An Easy Way For Placing Your Shop In Market  )</h3>
  </div>
<br/>



<br/>
<br/>



<div class="row">
  <%
      
for(Seller_pro_Bean i: al)
{%>


 <div class="column">
    <div class="card">
         <h6 style="text-align: right"><strong>Date :  <%=i.getDated()%></strong></h6>
         <h2 style="color: #3333ff;"><strong style="color: #0000cc;">Seller :  </strong> <%=i.getUsername()%></h2>
         <h3><strong style="color: #0000cc;">Product Id : </strong><%=i.getPid()%></h3>
        <h3><strong style="color: #0000cc;">Product Description : </strong><%=i.getPdesc()%></h3>
        <h4><strong style="color: #0000cc;">Price : </strong><%=i.getPrice()%>
            
            
            <p> <button class="btn btn-success " >Contact: <%=i.getMobileno()%></button>
      </p>
   
    </div>
  </div>
 
             

      
    
  <% }
      %>
</div>  
  
  <br/>
             
            <br/>
            <br/>
            
 
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
                <p><i class="fa-facebook-official"></i>Facebook</p>
                <p><i class="fa-twitter"></i>Twitter</p>
                <p><i class="fa-instagram"></i>Instagram</p>
                <p><i class="fa-youtube-play"></i>Youtube</p>
            </div>

            <div class="col-md-3 footer-image">
                <h1>Download App</h1>
                <img src="images/lastimg.png">
            </div>
        </div>
        <hr>
        <h3 class="endd">SELL-EASY <i class="fa-search"></i></h3>
    </div>

</section>




  
    </body>
</html>