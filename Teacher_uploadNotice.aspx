﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Teacher_uploadNotice.aspx.cs" Inherits="Teacher_uploadNotice" %>

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
                                onpageindexchanging="GridView1_PageIndexChanging" PageSize="8" 
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
                                                                        PostBackUrl="~/Teacher_uploadNotice.aspx" Text="
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
                                    <asp:TemplateField HeaderText="Notice No">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ELN_Notice_no") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ELN_Notice_no") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Notice subject">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ELN_Notice_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ELN_Notice_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date Of notice">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ELN_Notice_Date") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ELN_Notice_Date") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Notice Path">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ELN_Notice_Path") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ELN_Notice_Path") %>'></asp:Label>
                                        </ItemTemplate>
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
                            <asp:Label ID="Label48" runat="server" ForeColor="Black" Text="Notice No :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox23" runat="server" Width="254px"></asp:TextBox>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Find ?" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label50" runat="server" ForeColor="Black" 
                                Text="Subject of Notice :"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox22" runat="server" TextMode="MultiLine" Width="254px"></asp:TextBox>
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
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="tcal" Width="254px"></asp:TextBox>
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

