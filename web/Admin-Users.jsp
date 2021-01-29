<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>


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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
<style>

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

</head>
<body>
    <nav>
        <input type="checkbox" id="check">
        <label for="ckeck" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo">Search Easy</label>
        <ul>
            <li><a href="Admin-Main.jsp">Home</a></li>
            <li><a href="Admin-Categories.jsp">categories</a></li>
            <li><a href="Admin-Orders.jsp">Orders</a></li>
             <li><a class="active"  href="Admin-Users.jsp">Users</a></li>
        </ul>
    </nav>
    

    <!----------------------     End of navbar -------------------------------->
  <%  
    
    ArrayList<SessionBean> al=new ArrayList();
   
    out.print("<table>");
    out.println("<thead>");
    String userId="" ,userName="", userEmail="" ,userPhone="" ,userAddress ="",userPassword ="";
          String sql=String.format("select * from users");
          try
          {
              ResultSet rs=DatabaseBean.executeQuery(sql);
             while(rs.next())
             {
                 
             userId=rs.getString("userId");
             userName=rs.getString("userName");
             userEmail=rs.getString("userEmail");
             userPhone=rs.getString("userPhone");
             userAddress=rs.getString("userAddress");
             userPassword=rs.getString("userPassword"); 
             SessionBean sb=new SessionBean(userId, userName, userEmail, userPhone, userAddress, userPassword);
             al.add(sb);
    //         al.add(rs);
    
                   
             }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(null, "Admin-Users" +e.getMessage());
          }
    //out.print("<html>");
    


  %>
    <br/>
  
    <h1 style="text-align: center;font: 400;color:#3333ff ">Welcome!  Admin</h1>
<h3 style="text-align: center; color: #999999">(Users Of SearchEasy)</h3>

<br/>
  

<div class="row">
  <%
      
for(SessionBean i:al)
{%>


    
 
  <div class="column">
    <div class="card">
        <img src="images/usericon.png">
      <h3><%=i.getUserName() %></h3>
      <p><%=i.getUserEmail()%></p>
      <p><%=i.getUserPhone()%></p>
      <p>
       <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a>
      </p>
    </div>
  </div>
    
    
  <% }
      %>
</div>  
  
  <br/>
  
  
    
    
    
    
    
    
    
</body>
</html>