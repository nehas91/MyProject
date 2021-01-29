<%-- 
    Document   : PlaceOrder
    Created on : Sep 21, 2020, 2:43:38 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.SessionBean"
        session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script  type="text/javascript"src="script/Add_To_Cart.js"></script>
        <style>
            
            #confirm{

                float: right;
                width: 190px;
                margin-right: 10px;
                margin-top: 10px;
                border-radius: 50px;
            }


            #continue{

                float: right;
                width: 190px;
                margin-right: 70px;
                margin-top: 10px;
                border-radius: 50px;
            }


            #m1{
                margin-left: -470px;

            }
            #m2{
                margin-left: -516px;
            }

            #m3{
                margin-left: -485px;
            }

            #m4{
                margin-left: -472px;
            }

            #m5{
                margin-left: -490px;
            }

            #m6{
                margin-left: -425px;
            }

            #name{
                width: 585px;
            }
           
        </style>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>


    </head>
    <body>

        <%@include file="Common_modals.jsp" %>
        <jsp:useBean class="com.project.SessionBean" id="sb" scope="session"  />
         <%
                                  // passing values from javascript function
                                             int name=Integer.parseInt(request.getParameter("totalPrice"));
                                             String cart=request.getParameter("ptitle");
                                         %>
    
        <h3 style="text-align: center;">Your Cart- Place Order Here</h3>
        <div class="container-fluid">
            <div class="row mt-5">
                <div class="col-md-6">
                    <!-- card -->

                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center my-2">Your Selected items</h3>
                            <div class="cart-body text-success">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 ">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center ">Your Details For Order</h3>

                            
                            <form method="post" action="ExamServlet?op=4">



                                <div class="form-group btn btn-primary col-lg-12 ">
                                    <label for="userid" id="m2">UserId:</label>
                                    <input  value="<%=sb.getUserId()%>"type="text"  name="userid" class="form-control" placeholder="Your UserId" id="userid"/>
                                </div>
                                                              
                                  
                                <div class="form-group btn btn-primary col-lg-12 ">
                                    <label for="emaild" id="m1">Email address:</label>
                                    <input  value="<%=sb.getUserEmail()%>" type="email" name="emailid" class="form-control" placeholder="Your Email" id="emailid"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="name" id="m3">Your Name:</label>
                                    <input value="<%=sb.getUserName()%>" type="text"  name="name" class="form-control" placeholder="Your Name" id="name"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="address" id="m4">Your Address:</label>
                                    <input  value="<%=sb.getUserAddress()%>" type="text" name="address" class="form-control" placeholder="Your Address" id="address"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="TotalPrice" id="m5">Total Price:</label>
                                    <input  value="<%=name%>"type="number" class="form-control"  name="TotalPrice" placeholder="Your Price" id="TotalPrice"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="pdesc" id="m6">Product Description:</label>
                                    <textarea   class="form-control" type="text" rows="5"   name="pdesc" placeholder="Your ProductDescription" id="pdesc" /><%=cart%></textarea>                                </div>
                        
                               

                                <br/>
                                
                           
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <button type="submit" class="btn btn-primary " id="confirm">Confirm Order</button>
                                    </div>
                                    <div class="col-md-6">
                                        <a href="MainPage.jsp"><button type="button"  class="btn btn-success "  id="continue">Continue Shopping</button>
                                    </div>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
