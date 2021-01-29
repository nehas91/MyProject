
<%@page import="oracle.net.aso.i"%>
<%@page import="com.project.CategoryBean"%>
<%@page import="com.project.OrdersBean"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>


<%@page import="com.project.DatabaseBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>

<style>
div {
  margin-bottom: 2px;
  padding: 4px 12px;
}


.success {
  background-color: #ddffdd;
  border-left: 6px solid #4CAF50 ;
  
  margin: 1px;
  
}




</style>
</head>
<body>
    
    <jsp:useBean class="com.project.SessionBean" id="sb" scope="session"  />
    <%  
    
    ArrayList<OrdersBean> al=new ArrayList();
   
  
     String dated="",userid="",emailid="",name="",address="",pdesc="";
     int orderid=0,totalprice=0;
          String sql=String.format("select * from orders");
          try
          {
              ResultSet rs=DatabaseBean.executeQuery(sql);
             while(rs.next())
             { 
                    dated=rs.getString("dated");
                    userid=rs.getString("userid");
                    emailid=rs.getString("emailid");
                    name=rs.getString("name");
                    address=rs.getString("address");  
                    pdesc=rs.getString("pdesc");
                    orderid=rs.getInt("orderid");
                    totalprice=rs.getInt("totalprice");
              
             OrdersBean ob=new OrdersBean(dated, userid, emailid, name, address, pdesc, orderid, totalprice);
            
         al.add(ob);
                   
             }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(null, "Orders" +e.getMessage());
          }
    //out.print("<html>");
    


  %>
  
  
  
  <nav>
        <input type="checkbox" id="check">
        <label for="ckeck" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo">Search Easy</label>
        <ul>
            <li><a href="Admin-Main.html">Home</a></li>
            <li><a href="Admin-Categories.jsp">categories</a></li>
            <li><a  class="active" href="Admin-Orders.jsp">Orders</a></li>
             <li><a  href="Admin-Users.jsp">Users</a></li>
        </ul>
    </nav>
    <br/>





 <h1 style="text-align: center;font: 400;color:#3333ff ">Welcome!  Admin</h1>
<h3 style="text-align: center; color: #999999">( Orders Of SearchEasy)</h3>
<br/>
<div class="row">
  <%
      
for(OrdersBean i: al)
{%>

<div class="card">
    <div class="card-body">
  <div class="container "> 
      <div class="row">
          <div class="success">
              
              <p style="text-align: right"><strong> Date : <%=i.getDated() %>  </strong></p>
          
              <p style="text-align: left" id="k1"><strong> OrderId : <%=i.getOrderid() %> &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TotalPrice : <%=i.getTotalprice() %> </strong>  </p>
              
              <p><strong>EmailId : <%=i.getEmailid() %></strong></p>
              <p><strong>Product Description : <%=i.getPdesc()%></strong></p>
              <p></p>
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







