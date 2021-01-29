<%-- 
    Document   : PlaceOrder
    Created on : Sep 21, 2020, 2:43:38 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.project.Seller_SessionBean"
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
                margin-right: 40px;
                margin-top: 10px;
                border-radius: 50px;
            }


            #form{

                float: right;
                width: 190px;
                margin-right: 60px;
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

                <jsp:useBean class="com.project.Seller_SessionBean" id="ss" scope="session"  />
       
        
    <h2 style="text-align: center; color: #0000ff;  ">Welcome Seller <%=ss.getUsername()%></h2>
    <h5 style="text-align: center; color: #999999">(An Easy Way For Placing Your Shop In Market)</h5>    
    <div class="container-fluid"  style="margin-left: 28%; height: border-box;">
            <div class="row mt-5">
             

                <div class="col-md-6 ">
                    <div class="card ">
                        <div class="card-body  btn-secondary" >
                            <h3 class="text-center ">Add Your Product</h3>

                            userid
username
address
mobileno
price
pdesc
                            <form method="post" action="ExamServlet?op=7">



                                <div class="form-group btn btn-primary col-lg-12 ">
                                    <label for="userid" id="m2">UserId:</label>
                                    <input  value="<%=ss.getUserid()%>"type="number"  name="userid" class="form-control" placeholder="Your UserId" id="userid"/>
                                </div>
                                                              
                                  
                                <div class="form-group btn btn-primary col-lg-12 ">
                                    <label for="Username" id="m1">Username:</label>
                                    <input  value="<%=ss.getUsername()%>" type="text" name="username" class="form-control" placeholder="Your Name" id="username"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="mobileno" id="m3">Your Mobile:</label>
                                    <input value="<%=ss.getMobileno()%>" type="number"  name="mobileno" class="form-control" placeholder="Your Mobile no" id="mobileno"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="address" id="m4">Your Address:</label>
                                    <input  value="<%=ss.getAddress()%>" type="text" name="address" class="form-control" placeholder="Your Address" id="address"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="price" id="m5">Product Price:</label>
                                    <input   type="number" class="form-control"  name="price" placeholder="Your Price" id="price"/>                                </div>

                                <div class="form-group  btn btn-primary col-lg-12 ">
                                    <label for="pdesc" id="m6">Product Description:</label>
                                    <textarea   class="form-control" type="text" rows="5"   name="pdesc" placeholder="Your ProductDescription" id="pdesc" /></textarea>                                </div>
                        
                               

                                <br/>
                                
                           
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <button type="submit" class="btn btn-primary " id="confirm">Confirm Product</button>
                                    </div>
                                    <div class="col-md-6">
                                        <a href=""><button type="button"  class="btn btn-success "  id="form">Reset</button>
                                    </div>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                    
                                    
                                    
                                    <script>
                                        
                                        
                                        $('#form').get(0).reset(); 
                                    </script>
    </body>
</html>
