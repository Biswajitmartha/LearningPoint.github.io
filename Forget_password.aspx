<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget_password.aspx.cs" Inherits="Forget_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
   <head>
     <title>Government Polytechnic Berhampur</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="shortcut icon" href="assets/images/logo.ico" type="image/x-icon">
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content=""
         />
     <script>
         addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
      </script>
      <!-- Meta tags -->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all"/>
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet"/>
   </head>
   <body>
   <form id="newMy" runat="server">
      <div class="mid-class">
         <div class="art-right-grids">
            <h2>Government Polytechnic Security Panel</h2>
            
               <div class="main">
                  <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_Roll_No" runat="server" placeholder="Registration No." required=""></asp:TextBox>
                   </div>
                  <div class="form-left-to-mids ">
                      <asp:TextBox ID="tbx_phoneNo" runat="server" placeholder="Phone No." required="" ></asp:TextBox>
                     
                     <div class="clear"></div>
                  </div>
                  <div class="form-left-to-mids ">
                      <asp:TextBox ID="tbx_pass" runat="server" placeholder="Enter New Password" required="" TextMode="Password"></asp:TextBox>
                     
                     <div class="clear"></div>
                  </div>
                  <div class="form-left-to-mids ">
                      <asp:TextBox ID="tbx_new" runat="server" placeholder="Confirm New Password" required="" TextMode="Password"></asp:TextBox>
                     
                     <div class="clear"></div>
                  </div>

               </div>
              
               <div class="right-side-forget">
                  <a href="Default.aspx" class="for">Log-in!!!</a>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                   <asp:Button ID="Button1" runat="server" Text="Change Password" 
                       onclick="Button1_Click" />
               </div> 
            
            <div class="lay_more-buttn">
               <h3>Don't have an account???
                  <a href="New_User.aspx"><b style="color: #FF0000">Sign Up Here!!!</b>
                  </a>
               </h3>
            </div>
          </div>
         <div class="art-left-grids">
            <h1 class="header-grids">
                <img src="assets/images/govt.jpg" class="image responsive"/ alt="Government Polytechnic">
                Government Polytechnic E-Learning System
            </h1>
         </div>
      </div>
      <footer class="bottem-tree-footer">
         <p>
            © 2021 C.S.E. Backbenchers All Rights Reserved.
         </p>
      </footer>
      </form>
   </body>
</html>
