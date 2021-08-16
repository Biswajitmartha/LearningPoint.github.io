<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_UpDateProfileData.aspx.cs" Inherits="Admin_UpDateProfileData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="master" Runat="Server">

    <table class="nav-justified">
        <tr>
            <td align="center" bgcolor="#0066FF" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                Text="Update Profile"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="College Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_regdID" runat="server" Width="250px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" BorderColor="#0066FF" Font-Bold="True" 
                Text="Go !" Width="50px" onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Registration No. :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_cname" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label6" runat="server" Text="Branch Name :"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="tbx_bname" runat="server" Width="250px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>C.S.E.</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>H.M. & C.T.</asp:ListItem>
                    <asp:ListItem>Food Technology</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Father's Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_fname" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Phone No :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_phoneNo" runat="server" Width="250px" 
                    AutoCompleteType="Cellular"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="E-Mail ID :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_eid" runat="server" Width="250px" AutoCompleteType="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Gender :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddl_gender" runat="server" Width="250px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>TRANSGENDER</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="D.O.B. :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_dob" runat="server" Width="250px" BackColor="White" 
                CssClass="tcal"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_passward" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Photo :"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text="N/A"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fu1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Date :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbx_creationDate" runat="server" Width="250px" BackColor="White" 
                CssClass="tcal"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" BorderColor="#0066FF" Font-Bold="True" 
                Text="Cancel" Width="100px" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" BorderColor="#0066FF" Font-Bold="True" 
                Text="Update" Width="150px" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 38px">
            </td>
            <td style="height: 38px">
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
    </table>

</asp:Content>

