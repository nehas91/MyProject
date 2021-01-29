<div id="ht" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <div class="modal-content ">
                <div class="modal-header" style="background-color: #ccccff;">
                    <h4 class="modal-title  " style="font-size: xx-large; color:#0099ff; text-align: center; " >&nbsp; Login</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form  method="post" action="ExamServlet?op=6"> 
                        
                            <div class="form-group">
                                <label  for="username " style=" font: bolder; color:#0099ff; font-size: large; ">UserName</label>
                                <input type="text" class="form-control col-md-10" placeholder="Type Username" autocomplete="off" id="username" name="username"/>
                            </div>
                            <div class="form-group">
                                <label  for="password" style=" font: bolder; color:#0099ff; font-size: large;" >Password</label>
                                <input type="password" class="form-control col-md-10" placeholder="Type Password" autocomplete="off" id="password" name="password"/>
                            </div>
                            <div class="col-sm-auto">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" checked>
                                    <label for="form-check-label">Remember Me</label>
                                </div>
                            </div>
                      
                        
                                                <div class="form-row">
                                                    
                                                    <button type="submit" class="btn btn-primary ml-5">Sign-In</button>
                                                    
                                                   
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        </div>
                                                

                        
                        
                        
                      <!--  <div class="row">
                            <div class="col-md-6">
                                <button type="button" class="btn btn-secondary " data-dismiss="modal">Cancel</button></div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary ">Sign-In</button>
                                </div>
                        </div>   -->
                    </form>
                </div>
            </div>
        </div>
    </div>