<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default100.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  ng-app='myFrontend'>
   
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
      <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      
	  <link rel="shortcut icon" type="image/png" href="/assets/images/pngic.png"/>
      <title>Eny Ride</title>
      <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'/>
      <!-- custom CSS -->
	  <link href="assets/css/bootstrap.css" rel="stylesheet"/>
      <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
       
     <link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	   
    <link href="maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/css/bus.css" rel="stylesheet"/>
      <link href="assets/css/parsley.css" rel="stylesheet"/>
     
      <link href="assets/css/datepick.css" rel="stylesheet"/> 

    <script src="assets/js/custom.js" type="text/javascript"></script>
	 
    <script src="assets/js/bus.js" type="text/javascript"></script>
	  
      <!-- Bootstrap core CSS -->
      
      <style>
  [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
  display: none !important;
}
</style>
       
    
      <script type="text/ecmascript" src="assets/js/jquery.js"></script> 
  
	  
      <script src="assets/js/jquery-ui.js" ></script>
	   
   <script src="assets/js/jquery.raty.js"></script>
 
    
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
	    
   </head>
  

 
  <body >
  
	    <form id="Home" runat="server">
	   <!--HEADER-BAR-->
         <div class="tb_header">
            <div class="container">
               <div class="col-md-6" style="padding:0;">
                  <div class="tb_logo"> <a href="#"><img src="assets/images/logo.png" alt="Logo"> </span></a> </div>
                  
               </div>
               <div class="col-md-4" style="padding:0;">
                  <div class="tb_navbar">
                     <ul>
                        <li><div class="col-md-2"><a href="#"><img src="assets/images/1.png" alt="Logo"> </a></div></li>
                        <li><a href="Default.aspx"><B style="color: #1A4875; font-size: medium">Home &nbsp; |</B></a></li>
                                            
                        <li><a href="#myModals" data-toggle="modal" data-target="#myModals"><B style="color: #1A4875; font-size: medium">Print/SMS/Cancel/Refund</B></a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-2" style="padding:0;">
			   
				                  <div class="signin_up">
                     <ul>
                        <li><a href="#myModals" data-toggle="modal" data-target="#myModals"><B style="color: #1A4875; font-size: medium">Sign In &nbsp |</B></a></li>
                        <li><a href="#myModal" data-toggle="modal" data-target="#myModal"><B style="color: #1A4875; font-size: medium">Sign Up</B></a></li>
                     </ul>
                  </div>
				                               <!------logged end---------------->
               </div>
            </div>
            <div class="shadow"><img src="assets/images/shadow.png"></div>
         </div>
         <!--HEADER-BAR-END-->
         <!-- Modal -->
         <div class="modal fade" id="myModals" role="dialog" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
               <!-- Modal content-->
               <button type="button" class="close_lft" data-dismiss="modal">&times;</button>
			   <DIV id="login" runat="server" data-parsley-validate="">
               <div class="login-block">
                  <h1>Login</h1>
                  
                   <asp:TextBox ID="username" runat="server"  name="username" placeholder="Email" class ="username" required=""></asp:TextBox>
                   <asp:TextBox ID="password" runat="server"  class="password" name="password" placeholder="Password" required=""></asp:TextBox>
                   
                   
                   <asp:Button ID="Button1" runat="server" Text="Login" 
                       style="position: relative;" onclick="Button1_Click"/>
                  
				  
				   <br>
                  <div class="small_loader" style="text-align:center;display:none"></div>
				  <div class="login_res" style="text-align:center;"></div>
                  <br>
                  <div class="forgot"><a data-dismiss="modal" href="#myModalf"data-toggle="modal" data-target="#myModalf">Forgot Password?</a></div>
                  <div class="sign_in"><a  data-dismiss="modal" href="#myModal" data-toggle="modal" data-target="#myModal">Sign Up</a></div>
               </div>
			   </DIV>
            </div>
         </div>
         <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <button type="button" class="close_lft" data-dismiss="modal">&times;</button>
			   <DIV id="signup" data-parsley-validate="">
               <div class="login-block">
                  <h1>Sign Up</h1>
                   <asp:TextBox ID="register_firstname"  class="name" runat="server" placeholder="Name" data-parsley-required="true"  data-parsley-trigger="change"  
                                data-parsley-minlength="2" data-parsley-maxlength="20" data-parsley-pattern="^[a-zA-Z\  \/]+$"></asp:TextBox>
                   <asp:TextBox ID="email" runat="server" class ="username" placeholder="Email" name="username"  required></asp:TextBox>
                   <asp:TextBox ID="signupusername" runat="server" class="mobile" data-parsley-type="digits" data-parsley-required="true" data-parsley-trigger="change" required minlength="3"
data-parsley-minlength="3" data-parsley-maxlength="15" placeholder="Mobile"></asp:TextBox>
                   <asp:TextBox ID="dfdfd" runat="server" class="password" placeholder="Password"  data-parsley-maxlength="15" data-parsley-minlength="6" required=""></asp:TextBox>
                   <asp:TextBox ID="passwords" runat="server" type="password" data-parsley-maxlength="15" data-parsley-minlength="6" data-parsley-equalto="#dfdfd" data-parsley-equalto-message="Password confirmation must match the password." class ="password"  required="" placeholder="Repeat Password" ></asp:TextBox>
                  <br>
                  <span class="terms_tb">By signing up, you agree to our <a class="cond_tb" href="#">Terms and Conditions.</a></span> <br>
                  <br>
                   <asp:Button ID="Button3" runat="server" Text="Sign up" 
                       style="position: relative;" onclick="Button3_Click"/>
				  
                  <br>
				   <div class="small_loader" style="text-align:center;display:none"><img src="assets/images/loader-small.gif"></div>
				  <div class="signup_res" style="text-align:center;"></div>
                  <br>
                  <div class="account"><a data-dismiss="modal" href="#myModals"data-toggle="modal" data-target="#myModals">Already have an account?</a></div>
                  <div class="sign_in"><a data-dismiss="modal" href="#myModals"data-toggle="modal" data-target="#myModals">Sign In</a></div>
               </div>
			   </DIV>
            </div>
         </div>
	   
	   
	   
	       <div class="modal fade" id="myModalf" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <button type="button" class="close_lft" data-dismiss="modal">&times;</button>
			    <DIV id="forgot" runat="server" data-parsley-validate="">
               <div class="login-block">
                  <h1>Forgot Password</h1>
              
                   <asp:TextBox ID="emails" runat="server"  name="email" placeholder="Email" class="username"  data-parsley-required="true"></asp:TextBox>
                   <span class="terms_tb">By signing up, you agree to our <a class="cond_tb" href="#">Terms and Conditions.</a></span> <br>
                  <br> 
                   <asp:Button ID="Button2" runat="server" Text="RESET" 
                       style="position: relative;" onclick="Button2_Click" />
				  
                  
                  <br/>
				   <div class="small_loader" style="text-align:center;display:none"><img src="assets/images/loader-small.gif"></div>
				  <div class="forgot_res" style="text-align:center;"></div>
                  <br/>
                  <div class="account"><a href="#">Already have an account?</a></div>
                  <div class="sign_in"><a data-dismiss="modal" href="#myModals"data-toggle="modal" data-target="#myModals">Sign In</a></div>
               </div>
			   </DIV>
            </div>
         </div>
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   


         <!--SEARCH-BAR-->
         <div class="container" ng-controller="search">
            <div class="row" style="min-height:400px;margin-top:120px;">
               <div class="col-md-6">
			   <DIV id="myForm" runat="server" method="post" data-parsley-validate="" autocomplete="off">
                  <section id="Search" class="LB XXCN  P20">
                     <h1 class="bookTic XCN TextSemiBold" >Online Bus Tickets Zero Booking Fees and Full Refund</h1>
                     <div class="searchRow clearfix">
                        <div class="LB">
                           <label class="inputLabel" style="font-size: medium">From</label>
                           <asp:TextBox ID="board_point" runat="server" class="XXinput searching" placeholder="Enter a city" type="text"  data-id="board_point" autocomplete="on" data-parsley-error-message="Please select a source city" tabindex="1" required></asp:TextBox>
                           <div class="errorMessageFixed"> </div>
                        </div>
                        <span class="switchButton" id="switchButton"></span>
                        <div class="searchRight NoPaddingRight">
                           <label class="inputLabel" style="font-size: medium">To</label>
                           <asp:TextBox ID="Destination" runat="server" class="XXinput searching" placeholder="Enter a city" type="text" tabindex="2" data-id="drop_point"  autocomplete="off" data-parsley-error-message="Please select a destination city" required></asp:TextBox>
                           <div class="errorMessageFixed"> </div>
                        </div>
                     </div>
                     <div class="searchRow clearfix">
                        <div class="LB">
                           <label class="inputLabel" style="font-size: medium">Date of Journey</label>
                           <span class="blackTextSmall"></span>
                           <asp:TextBox ID="Calenderfrom" class="XXinput calendar date-pick  pickup_date pickup_datef Calenderfrom" placeholder="dd-mm-yyyy" readonly type="text" title="Date in the format dd-mmm-yyyy"  tabindex="3" runat="server"></asp:TextBox>
                        </div>
                        <div class="searchRight retJouney">
                           <label class="inputLabel" style="font-size: medium">Date of Return<span class="opt">&nbsp;(Optional)</span></label>
                           <asp:TextBox ID="Calenderreturn" class="XXinput calendar date-pick pickup_dater" placeholder="dd-mm-yyyy" type="text" title="Date in the format dd-mmm-yyyy" readonly  tabindex="4" runat="server"></asp:TextBox>
                        </div>

                     </div>
                     <div class="dateError">Onward date should be before return date</div>
                      <button class="button reset_new" id="resetBtn" ng-click="resetbtn()">Reset Date</button>
                     <button class="RB Xbutton" id="searchBtn" ng-click="homesearch()">Search Buses</button>
                     
                  </section>
				  </DIV>
               </div>
               <div class="col-md-6">
                  <div class="tb_bus">
                     <img src="assets/images/bus.png">
                  </div>
               </div>
            </div>
         </div>
         <!--SEARCH-BAR-END-->
         <!--operator-BAR-->
         <div class="tb_operator">
            <div class="container">
               <div class="tb_inner">
                  <div class="row">
                     <div class="wrapper">
                        <div class="col-md-4 col-sm-12 col-xs-12">
                           <div class="tb_operator">
                              <img src="assets/images/routte.png"> &nbsp;<span class="tb_operator1">67000 <small class="smalls">ROUTES</small></span>
                           </div>
                        </div>
                        <div class="col-md-4  col-sm-12 col-xs-12">
                           <div class="tb_operator left"> 
                              <img src="assets/images/route.png">  &nbsp;<span class="tb_operator2">1800<small class="smalls"> BUS OPERATORS</small></span>
                           </div>
                        </div>
                        <div class="col-md-4  col-sm-12 col-xs-12">
                           <div class="tb_operator right"> 
                              <img src="assets/images/ticket.png">  &nbsp;<span class="tb_operator3">6,00,000 + <small class="smalls">TICKETS SOLD</small></span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--operator-BAR end-->
         <!--offers-BAR-->
          <div class="tb_offers">
            <div class="shadow"><img src="assets/images/shadow.png"></div>
            <div class="outer">
               <div class="container">
                  <div class="tb_inner">
                     <div class="row">
                        <div class="wrapper">
                           <div class="col-md-4">
                              <div class="tb_offers1">
                                 
                                 <div class="tb_list_offer">
                                     <img class="img-responsive" src="assets/images/1ST.png" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="tb_offers1_top">
                                 
                                 <div class="tb_list_offer" style=" border-right: 1px solid #dddddd;">
                                     <img class="img-responsive" src="assets/images/2ND.png" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="tb_offers3">
                                 
                                 <div class="tb_list_offer">
                                     <img class="img-responsive" src="assets/images/3RD.png" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <hr class="border">
                  </hr>
               </div>
            </div>
         </div>
         <div class="tb_offers">
            <div class="shadow"><img src="assets/images/shadow.png"></div>
            <div class="outer">
               <div class="container">
                  <div class="tb_inner">
                     <div class="row">
                        <div class="wrapper">
                           <div class="col-md-4">
                              <div class="tb_offers1">
                                 <img src="assets/images/rupees.png">
                                 <div class="tb_list_offer">
                                    <div class="ofer_list">UPTO RS.100 OFF</div>
                                    <div class="ofer_list_bold">TRAVEL SMART</div>
                                    <div class="ofer_list_normal">Code:RBM120</div>
                                    <div class="ofer_list_normal">Book Using Pay Money</div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="tb_offers1_top">
                                 <img src="assets/images/bed.png">
                                 <div class="tb_list_offer" style=" border-right: 1px solid #dddddd;">
                                    <div class="ofer_list">UPTO 70% OFF</div>
                                    <div class="ofer_list_bold">ON HOTELS ACROSS INDIA</div>
                                    <div class="ofer_list_normal"> Offer Code:RBRTM120</div>
                                    <div class="ofer_list_normal">&nbsp;</div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="tb_offers3">
                                 <img src="assets/images/phone.png">
                                 <div class="tb_list_offer">
                                    <div class="ofer_list"> &nbsp;&nbsp;FLAT Rs.100 OFF</div>
                                    <div class="ofer_list_bold left"> &nbsp;&nbsp;Truebus APP OFFER</div>
                                    <div class="ofer_list_normal">&nbsp;&nbsp; book via the Truebus APP</div>
                                    <div class="ofer_list_normal">&nbsp;&nbsp;  Code:ERHH54</div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <hr class="border">
                  </hr>
               </div>
            </div>
         </div><!--list-BAR-->
         <div class="container">
            <div class="rb_list">
               <div class="row">
                  <div class="wrapper">
                     <div class="tb_inner">
                        <div class="col-md-3">
                           <div class="footer_main">
                              <h4 class="tb_head" style="color: #0000CC; text-decoration: underline">OUR SERVICES</h4>
                              <div class="tb_route_list">
                                 <ul>
                                    <li><a href="#">Hyderabad to Bangalore</a></li>
                                    <li><a href="#">Pune to Bangalore </a></li>
                                    <li><a href="#">Hyderabad to Chennai</a></li>
                                    <li><a href="#">Coimbatore to Bangalore </a> </li>
                                    <li><a href="#">Chennai to Madurai</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="footer_main">
                              <h4 class="tb_head" style="color: #0000CC; text-decoration: underline">TOP CITIES</h4>
                              <div class="tb_route_list">
                                 <ul>
                                    <li><a href="#">Hyderabad to Bangalore</a></li>
                                    <li><a href="#">Pune to Bangalore </a></li>
                                    <li><a href="#">Hyderabad to Chennai</a></li>
                                    <li><a href="#">Coimbatore to Bangalore </a> </li>
                                    <li><a href="#">Chennai to Madurai</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="footer_main">
                              <h4 class="tb_head" style="color: #0000CC; text-decoration: underline">OUR CAB SERVICE</h4>
                              <div class="tb_route_list">
                                 <ul>
                                    <li><a href="#">Hyderabad to Bangalore</a></li>
                                    <li><a href="#">Pune to Bangalore</a></li>
                                    <li><a href="#">Hyderabad to Chennai</a></li>
                                    <li><a href="#">Coimbatore to Bangalore</a>  </li>
                                    <li><a href="#">Chennai to Madurai</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="footer_main">
                              <h4 class="tb_head" style="color: #0000CC; text-decoration: underline">TOP BUS OPERATORS</h4>
                              <div class="tb_route_list">
                                 <ul>
                                    <li><a href="#">Hyderabad to Bangalore</a></li>
                                    <li><a href="#">Pune to Bangalore</a></li>
                                    <li><a href="#">Hyderabad to Chennai</a></li>
                                    <li><a href="#">Coimbathroe to Bangalore</a></li>
                                    <li>
                                       <a href="#">
                                          Chennai to Madurai
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <hr class="border2">
            </hr>
         </div>
         <!--list-BAR end-->
         <!--footer-BAR-->
         <div class="container">
         <div class="row">
         <div class="tb_inner">
         <div class="col-md-9">
         <div class="tb_footer">
         <ul>
         <li><a href="#">About EnyRide &nbsp;|</a></li>
         <li><a href="#">FAQ   &nbsp;|</a></li>
         <li><a href="#">Careers  &nbsp;|</a></li>
         <li><a href="#">EnyRide Coupons  &nbsp; |</a></li>
         <li><a href="#">Contact Us   &nbsp;|</a></li>
         <li><a href="#">Terms of Use   &nbsp;|</a></li>
         <li><a href="#">Privacy Policy   &nbsp;|</a></li>
         <li><a href="#">EnyRide on Mobilenew .</a></li>
         
         <li>  <a href="#"><img src="assets/images/facebook.png"></a> </li> 
         <li>  <a href="#"> <img src="assets/images/twitter.png"></a></li>
         <li>  <a href="#"> <img src="assets/images/google.png"></a></li>s
         <div class="footer_con" style="color: #000000; font-size: medium">  &#169;  2019 <a href="https://www.softycode.com/" style="text-decoration:none;">softycode software center</a></div>
        </ul>
        </div>
         <div class="col-md-3">
         <div class="tb_social">
         <ul>
         
         </ul>
         </div>
		 <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
         </div>
         </div>
         </div>
         </div>	<script>

               	    base_url = "Default.aspx";
	
	</script>
     <!--   custom JavaScript -->

	 <script src="assets/js/angular/angular.js"></script>
	 <script src="assets/js/dirPagination.js"></script>
	  <script src="assets/js/search.js"></script>
	  <script src="assets/js/service.js"></script>
      <script src="assets/js/bus.js"></script>
	  <script src="assets/js/rating.js"></script>   
      <script src="assets/js/bootstrap.js"></script>
	  <script src="../malsup.github.io/jquery.form.js"></script>
	  

	  <script src="assets/js/jquery-datepicker.html"></script>
	   
	  <script src="assets/js/custom.js"></script>
	  
	
	<script src="assets/js/parsley.min.js"></script>
	
      <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
     
<script>
    $(document).ready(function () {

        $('#pickDate').click(function (e) {
            $(this).next().datepicker('show');
        });
        $(".pickup_date").datepicker({

            minDate: 0//this option for allowing user to select from year range
        });


        $(".returnsd").datepicker({

            minDate: new Date($(".datetimepicker4").val())

            //this option for allowing user to select from year range
        });
        $(".pickup_date").on('change', function (e) {

            $("#Calenderreturn").datepicker({

                minDate: new Date($(".Calenderfrom").val())

                //this option for allowing user to select from year range
            });
        });
        /*$(".date_of_birth").datepicker({
        changeYear: 'true',
        changeMonth: 'true'
          
        });*/
        /* $(".datepicker").datepicker({
        autoclose:'true',
        changeYear: 'true',
        changeMonth: 'true',
        yearRange: "2005:2015"
          
        });*/
        /*  var sd = new Date();
        var new_date=sd-60;
       
        $( ".date_picker" ).datepicker({
        changeMonth: 'true',
        changeYear: true,
            
        maxDate:  new Date()
           

        });*/
        /* $('.datepicker').datepicker({
        minDate: new Date(2014, 10, 30),
        maxDate: new Date(2015, 2, 5),
        setDate: new Date(2014, 10, 30)
        });*/
        $('ul.tabs li').click(function () {
            var id = $(this).data('id');
            //alert(id);
            var tab_id = $(this).attr('data-tab');

            $('ul.tabs li').removeClass('current');
            $('.tab-content').removeClass('current');

            $(this).addClass('current');
            $("#" + tab_id).addClass('current');

            $('#pament_option').val(id);
        });
    });

</script>
</form>
  </body>


</html>
