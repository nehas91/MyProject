
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.project.Seller_pro_Bean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.project.DatabaseBean"%>
<%@page import="com.project.Seller_SessionBean"%>
<%@page import="java.util.ArrayList"%>

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
       
  
  
  
   
  </head>
<body>
     
    </head>
    <body>
     

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
                        <li class="active">
                            <a href="Seller-Your_Shop.jsp" >Your Shop</a>
                            <!--Step IX: Create a Nested ul for Menu Items-->
                            <%--Logic added on 22-Jul to display dynamic menu--%>
                            
                        </li>
                        <li><ion-icon name="bag-handle-outline"></ion-icon><a href="Seller-Market.jsp">Market</a></li>
                    <li><a href="ExamServlet?op=8">Logout</i></a></li>
                    </ul>

                </div>  <%--End of Navbar--%>
            </div>

        </div>
            
            
            
            
            
             <jsp:useBean class="com.project.Seller_SessionBean" id="ss" scope="session"  />
    <%  
    
    ArrayList<Seller_pro_Bean> al=new ArrayList();
  
     String username="",address="",dated="",pdesc="";
     int pid=0,userid=0,mobileno=0,price=0;
          String sql=String.format("select * from Sellerpro where userid='%d'",ss.getUserid());
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
  
  
  
  <h3   style="text-align: left; color:  #3333ff; text-transform: capitalize; margin-left:  10px;"><%=ss.getState()%></h3> 

  <div  class="container " style="background-color:  #ccccff">    
  
 <h1 style="text-align: center;font: 400;color:#3333ff ">Welcome!  Seller <%=ss.getUsername()%></h1>
<h3 style="text-align: center; color: #999999"></h3>
  </div>
<br/>


<div  class="container" style="background-color: #ccffff;">    
    
    <h1 style="text-align: center;color: #333333; "><%=ss.getShopname()%></h1>
    
</div>
    <div class="container-fluid col-lg-3" >
        <h4 style="color: #3333ff;"> Your Menu </h4>
        <a href="Seller-AddProduct.jsp"> <button class="btn-danger text-left">Add Product </button></a>
    </div>
<br/>
<div class="row">
  <%
      
for(Seller_pro_Bean i: al)
{%>

<div class="card">
    <div class="card-body">
  <div class="container "> 
      <div class="row">
          <div class="container"  style="background-color: #ccccff;">
              
              <p style="text-align: right; "><strong> Date : <%=i.getDated() %>  </strong></p>
          
              <p style="text-align: left; margin-left: 30px;" id="k1"><strong> Product description : <%=i.getPdesc() %> </strong> </p>
              
              <p style="text-align: left; margin-left: 30px;"><strong> Product price : <%=i.getPrice() %></strong></p>
              <p style="text-align: left; margin-left: 30px;"><strong>Contact  : <%=i.getMobileno() %></strong></p>
              <p style="text-align: left; margin-left: 30px; color: #330000;"><%=i.getUsername()%></p>
              <p style="text-align: left; margin-left: 30px; color: #330000;">  <a href="ExamServlet?op=10&pid=<%=i.getPid()%>"><button class="btn btn-primary text-right"><i class="fa fa-sign-out"></i>Delete product</button></a></li>
            </p>
          </div>
      </div>
  </div>
</div>
</div>
              <br/>
              

      
    
  <% }
      %>
</div>  
  
  <br/>
    </body>
</html>