<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New_User.aspx.cs" Inherits="New_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
   <head>
     <title>Government Polytechnic</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="shortcut icon" href="assets/images/logo.ico" type="image/x-icon">
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="css/tcal.css" rel="stylesheet" type="text/css" />
       <script src="css/tcal.js" type="text/javascript"></script>
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
            <h2>Government Polytechnic Register</h2>
            
               <div class="main">
                  <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_Roll_No" runat="server" placeholder="Registration No" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox1" runat="server" placeholder="College Name" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox2" runat="server" placeholder="Branch Same as Identity CARD EX-C.S.E.,Mech.,Civil" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox3" runat="server" placeholder="Full Name In Capital" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox4" runat="server" placeholder="Phone No" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox5" runat="server" placeholder="E-Mail" required=""></asp:TextBox>
                   </div>
                   <div class="form-left-to-mids">
                       <asp:DropDownList ID="ddl_gen" runat="server"  Width="100%">
                           <asp:ListItem>Select Your Gender</asp:ListItem>
                           <asp:ListItem>MALE</asp:ListItem>
                           <asp:ListItem>FEMALE</asp:ListItem>
                           <asp:ListItem>TRANSGENDER</asp:ListItem>
                       </asp:DropDownList>
                   </div>
                   <br />
                   <div class="form-left-to-mids">
                      <asp:TextBox ID="tbx_TextBox7" runat="server" placeholder="Date Of Birth" required="" CssClass="tcal"></asp:TextBox>
                   </div>
                  <div class="form-left-to-mids ">
                      <asp:TextBox ID="tbx_password" runat="server" placeholder="Password" required="" TextMode="Password"></asp:TextBox>
                     
                     <div class="clear">
                         <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
                      </div>
                  </div>
               </div>
               <div class="left-side-forget">
                   <asp:CheckBox ID="CheckBox1" runat="server" />
                  <span class="remenber-me"><b style="color:red">I agree that all the information are correct of my knowledge.</b></span>
               </div>
               <div class="right-side-forget">
                  <a href="Forget_password.aspx" class="for">Forgot password???</a>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                   <asp:Button ID="Button1" runat="server" Text="Register Now!!!" 
                       onclick="Button1_Click" />
               </div>
            
            <div class="lay_more-buttn">
               <h3>Don't have an account???
                  <a href="Default.aspx"><b style="color: #FF0000">Login!!!</b>
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
      
      </form>
   </body>
</html>
