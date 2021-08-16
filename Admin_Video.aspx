<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Video.aspx.cs" Inherits="Admin_Video" %>

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
                                onpageindexchanging="GridView1_PageIndexChanging" PageSize="4" 
                                Width="100%" onpageindexchanged="GridView1_PageIndexChanged" 
                                onrowdatabound="GridView1_RowDataBound" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <Columns>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <table class="width100">
                                                <tr>
                                                    <td align="center">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:LinkButton ID="lnkDel" runat="server" 
                                                                        CommandArgument='<%# Eval("ELN_SlNo") %>' onclick="lnkDel_Click" 
                                                                        OnClientClick="return confirm('Are you sure to delete this row?');" 
                                                                        PostBackUrl="~/Admin_Video.aspx" Text="
&lt;img 
    src=&quot;img/del.png&quot; height=&quot;15px&quot; width=&quot;15px&quot; border=&quot;0&quot; alt=&quot;Sure to Delete&quot; /&gt;
                                "></asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <table class="width100">
                                                <tr>
                                                    <td align="center">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:LinkButton ID="lnkDelete" runat="server" 
                                                                        CommandArgument='<%# Eval("ELN_SlNo") %>' onclick="lnkDelete_Click" 
                                                                        OnClientClick="return confirm('Are you sure to Edit this row ?');" 
                                                                        PostBackUrl="~/Admin_Video.aspx" Text="
&lt;img 
    src=&quot;img/edit.png&quot; height=&quot;15px&quot; width=&quot;15px&quot; border=&quot;0&quot; alt=&quot;Sure to Delete&quot; /&gt;
                                "></asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Video Code">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ELN_vid_no") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ELN_vid_no") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Video Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ELN_vid_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ELN_vid_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ELN_vid_Subject") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ELN_vid_Subject") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date Of Upload">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ELN_vid_Date") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ELN_vid_Date") %>'></asp:TextBox>
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
                            <asp:Label ID="Label48" runat="server" ForeColor="Black" Text="Video Code :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox23" runat="server" Width="254px"></asp:TextBox>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label50" runat="server" ForeColor="Black" Text="Video Name :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox22" runat="server" TextMode="MultiLine" Width="254px"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Find ?" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label49" runat="server" ForeColor="Black" 
                                Text="Subject :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="254px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>MATHEMATICS</asp:ListItem>
                                <asp:ListItem>COMPUTER APPLICATION</asp:ListItem>
                                <asp:ListItem>ELECTRONICS</asp:ListItem>
                                <asp:ListItem>ELECTRICAL</asp:ListItem>
                                <asp:ListItem>ENGLISH</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label51" runat="server" ForeColor="Black" Text="Upload File :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:FileUpload ID="fu1" runat="server" Width="254px" />
                            <asp:Label ID="Label47" runat="server" Text=" N / A"></asp:Label>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label52" runat="server" ForeColor="Black" Text="Date :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="tcal" Width="254px" 
                                BackColor="White"></asp:TextBox>
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                        <td align="left">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                                BackColor="#FF99CC" />
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="Insert New" BackColor="#3399FF" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

