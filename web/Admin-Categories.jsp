<%@page import="com.project.CategoryBean"%>
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
body {
  font-family: Arial, Helvetica, sans-serif;
}
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
    background-color: #6666ff;
  color: white;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
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
            <li><a class="active" href="Admin-Categories.jsp">categories</a></li>
            <li><a href="Admin-Orders.jsp">Orders</a></li>
             <li><a  href="Admin-Users.jsp">Users</a></li>
        </ul>
    </nav>
    

    <!----------------------     End of navbar -------------------------------->
  <%  
    
    ArrayList<CategoryBean> al=new ArrayList();
   
  
    String categoryId="" ,categoryTitle="" ,categoryDescription="";
          String sql=String.format("select * from category");
          try
          {
              ResultSet rs=DatabaseBean.executeQuery(sql);
             while(rs.next())
             {
                 categoryId=rs.getString("categoryId");
             categoryTitle=rs.getString("categoryTitle");
              categoryDescription=rs.getString("categoryDescription");
           CategoryBean cb=new CategoryBean(categoryId, categoryTitle, categoryDescription);
            al.add(cb);
    //         al.add(rs);
    
                   
             }
          }
          catch(Exception e)
          {
              JOptionPane.showMessageDialog(null, "Admin-Categories" +e.getMessage());
          }
    //out.print("<html>");
    


  %>
    <br/>
  
    <h1 style="text-align: center;font: 400;color:#3333ff ">Welcome!  Admin</h1>
<h3 style="text-align: center; color: #999999">(Category Of SearchEasy)</h3>
<br/>
<div class="row">
  <%
      
for(CategoryBean i:al)
{%>

<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
        <br/><br/><br/>
        <h3><%=i.getCategoryTitle()%></h3>
        <h5 style="text-align: center"><p>(<%=i.getCategoryDescription()%>)</p></h5> 
    </div>
    <div class="flip-card-back">
      <h1><%=i.getCategoryDescription()%></h1> 
    </div>
  </div>
</div>    
    
  <% }
      %>
</div>  
  
  <br/>
  
  
    
    
    
    
    
    
    
</body>
</html>