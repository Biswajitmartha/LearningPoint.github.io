<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="User_Notice.aspx.cs" Inherits="User_Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="master" Runat="Server">
<table width="100%">
        <tr>
            <td align="center">
                <table align="center">
                    <tr>
                        <td align="left" colspan="3">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                GridLines="Horizontal" Height="45px" 
                                onpageindexchanging="GridView1_PageIndexChanging" PageSize="12" 
                                Width="100%" onpageindexchanged="GridView1_PageIndexChanged" 
                                onrowdatabound="GridView1_RowDataBound" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="Download">
                                        <ItemTemplate>
                                            <table class="width100">
                                                <tr>
                                                    <td align="center">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:LinkButton ID="lnkDel" runat="server" 
                                                                        CommandArgument='<%# Eval("ELN_SlNo") %>' onclick="lnkDel_Click" 
                                                                        OnClientClick="return confirm('Are you sure to download this file ?');" 
                                                                        PostBackUrl="~/Teacher_uploadMaterial.aspx" Text="
&lt;img 
    src=&quot;img/down.png&quot; height=&quot;15px&quot; width=&quot;15px&quot; border=&quot;0&quot; alt=&quot;Sure to Delete&quot; /&gt;
                                "></asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Material No">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ELN_mat_no") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ELN_mat_no") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Material Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ELN_mat_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ELN_mat_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Material Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ELN_mat_Subject") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ELN_mat_Subject") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date Of Upload">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ELN_mat_Date") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ELN_mat_Date") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <asp:Label ID="Label42" runat="server" ForeColor="#00CCFF" Text="No Data Found"></asp:Label>
                                </EmptyDataTemplate>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BorderStyle="Solid" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="height: 26px">
                            <asp:Label ID="Label49" runat="server" ForeColor="Black" 
                                Text="Notice No :"></asp:Label>
                        </td>
                        <td align="left" style="height: 26px">
                            <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Find ?" />
                        </td>
                        <td align="left" style="height: 26px">
                            </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

