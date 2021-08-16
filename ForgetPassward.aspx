<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassward.aspx.cs" Inherits="ForgetPassward" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>GPBAM</title>
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="hel/bower_components/bootstrap/dist/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="hel/bower_components/font-awesome/css/font-awesome.min.css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="hel/bower_components/Ionicons/css/ionicons.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="hel/dist/css/AdminLTE.min.css"/>
  <!-- iCheck -->
  <link rel="stylesheet" href="hel/plugins/iCheck/square/blue.css"/>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<form id="passward" runat="server">
<div class="login-box">
  <div class="login-logo">
    <a href=""><b>GPBAM</b><br>Security Panel</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Get Password</p>

    
      <div class="form-group has-feedback">
        
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Regestation No"></asp:TextBox>
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-4">
        <asp:Button ID="Button1" runat="server" Text="Check Mobile" 
                class="btn btn-primary btn-block btn-flat" Width="130px" />
        </div>
        <!-- /.col -->
      </div>
   

    <!-- /.social-auth-links -->
    <a href="LogIn.aspx" style="font-size: medium; color: #0000CC">Log-In</a><br>
    
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script type="text/javascript" src="hel/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script type="text/javascript" src="hel/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script type="text/javascript" src="hel/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</form>
</body>

</html>
