<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_create_Teacher.aspx.cs" Inherits="Admin_create_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="master" Runat="Server">
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter Registration No.</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Registration No." required=""></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter Teacher's Name.</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Teacher's Full Name" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Select A Branch Name.</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" placeholder="MUST CHOOSE ONE" required="">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>C.S. & E.</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                        <asp:ListItem>Electrical</asp:ListItem>
                        <asp:ListItem>H.M. & C.T.</asp:ListItem>
                        <asp:ListItem>Food Technology</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter Father's Name.</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Father's Full Name" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter Phone No.</label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Teacher's Phone No." required=""></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Enter a valid E-mail.</label><asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid E-mail" 
                        ControlToValidate="TextBox5" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="EX: xyz@gmail.com" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Gender</label>
                    <asp:DropDownList ID="DropDownList2" runat="server" runat="server" class="form-control" required="">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                        <asp:ListItem>TRANSGENDER</asp:ListItem>
                    </asp:DropDownList>
                
                </div>
                <div class="input-group date">
                    <label for="exampleInputEmail1">Enter Date of Birth</label>
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control tcal" 
                        placeholder="MM/DD/YYYY" required="" BackColor="White" Width="100%"></asp:TextBox>
                  
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Create Password" TextMode="Password"></asp:TextBox>

                </div>
                <div class="form-group">
                  <label for="exampleInputFile">Profile Photo</label>
                  
                            <asp:FileUpload ID="fu1" runat="server" class="form-control" placeholder="" required=""/>
                </div>
                <div class="form-group">
                <asp:Button ID="Button1" runat="server" ForeColor="White" Text="Confirm & Save" 
                        class="btn btn-block btn-default btn-lg" BorderColor="#66FF66" 
                        onclick="Button1_Click" BackColor="#0066FF"/>
               
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                
              </div>
            </form>

</asp:Content>

