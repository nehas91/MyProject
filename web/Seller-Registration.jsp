<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>SearchEasy</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/SellerRegistration.css" type="text/css"/>
       <link rel="stylesheet" href="css/regform.css" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
    
    </head>
    <body>
       
            
                <h1  style="text-align: center;margin-bottom: 0px;;" class="heading">SellEasy</h1>
                <h5 style="text-align: center; margin-top: 0px;" >( An Easy Way For Placing Your Shop In Markets )</h5>
           
           
                
        <div align="centre" class="main">
            <article class="reg-frm">
            <form method="post" action="ExamServlet?op=5">
                <fieldset>
                    <legend class="frm-head">User Please Fill Details</legend>
                    <table style="margin-left: 50px;" cellpadding="5" cellspacing="0">
                          <tr>
                            <td>Userid</td>
                                <td>
                                    <input class="my-inpt" type="number" name="userId"  placeholder ="Enter userid" required />
                            </td>
                        </tr>
                        
                          <tr>
                            <td>Username</td>
                        
                            <td>
                                <input class="my-inpt" type="text" name="userName" placeholder="Enter your username" required />
                            </td>
                        </tr>
                        <tr>
                            <td>Shop Name</td>
                        
                            <td>
                                <input class="my-inpt" type="text" name="shopName" placeholder="eg.Tilwani groceries" required />
                            </td>
                        </tr>
                       
                        <tr>
                            <td style="font: bold">Mobile Number</td>
                        
                            <td>
                                <input class="my-inpt" type="number" name="mobile" placeholder="Enter Your Mobile " required />
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td rowspan="2">Proof Of Identity</td>
                            <td >
                                <select class="my-inpt" name="id_name" required>
                                   <option value="0" selected disabled>--Select--</option>
                                   <option value="Aadhar">Aadhar</option>
                                   <option value="PassPort">PassPort</option>
                                   <option value="PanCard">PanCard</option>
                               </select>
                           </td>
                        </tr>
                        <tr>
                           <td>
                                <input class="my-inpt" type="text" name="id_no" placeholder="Enter ID Number" />
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td>GSTIN number</td>
                           <td>
                                <input class="my-inpt" type="text" name="GSTIN_no" placeholder="Enter GSTIN Number" />
                            </td>
                        </tr>
                        
                       
                                   <tr>
                                   <td >Address</td>
                                   <td><input class="my-inpt" type="text" name="address" placeholder="Address Line" /></td>
                               </tr>
                              
                              
                               <tr>
                                   <td>Select State </td>
                                   <td >
                                       <select class="my-inpt" name="state" required>
                                           <option value="0" selected disabled>--Select State--</option>
                                           <option value="jharkhand">Jharkhand</option>
                                           <option value="madhya pradesh">Madhy Pradesh</option>
                                           <option value="maharashtra">Maharastra</option>
                                       </select>
                                   </td>
                               </tr>
                               
                                 <tr>
                            <td>Password</td>
                        
                            <td>
                                <input class="my-inpt" type="password" name="password" placeholder="Enter Password" required />
                            </td>
                        </tr>
                        
                          <tr>
                            <td>Conform Password</td>
                        
                            <td>
                                <input class="my-inpt" type="password" name="conformpassword" placeholder="Conform Password" required />
                            </td>
                        </tr>
                               
                               
                               <tr>
                                   <td colspan="2">
                                        <button class="sign-btn" type="submit">Submit</button>
                                   </td>
                               </tr>
                        </table>
                </fieldset>
            </form>
            </article>
        </div>
              
    </body>
</html>
