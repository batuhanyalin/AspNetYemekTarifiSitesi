<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="AspNetYemekTarifiSitesi.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            width: 100%;
        }

        .auto-style8 {
            width: 75px;
        }

        .auto-style14 {
            width: 74px;
        }

        .auto-style16 {
            text-align: right;
        }

        .auto-style18 {
            width: 99%;
        }
        .auto-style25 {
            width: 250px;
        }
        .auto-style26 {
            width: 250px;
            height: 23px;
            text-align:center;
        }

        .auto-style5 {
            text-align: left;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style6">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server"  Text="Göster" Width="60px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" Text="Gizle" Width="60px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Yorumlar"></asp:Label>
                    </td>
                </tr>
             
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <table class="auto-style18">
                  <tr>
                    <td class="auto-style26">
                        <asp:Label ID="Label3" runat="server" CssClass="admineklebaslik" Text="ONAYLI YORUMLAR"></asp:Label>
                      </td>
                    <td class="auto-style26">
                        <asp:Label ID="Label4" runat="server" CssClass="admineklebaslik" Text="ONAYSIZ YORUMLAR"></asp:Label>
                      </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:DataList ID="DataList1" runat="server" Width="260px">
                            <ItemTemplate>
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("YORUMADSOYAD") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style16"><a href='Yorumlar.aspx?YorumID=<%# Eval("YORUMID") %>&amp;islem=sil'>
                                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_delete_100px.png" Width="30px" />
                                            </a></td>
                                        <td class="auto-style16"><a href='adminYorumDetay.aspx?YorumID=<%# Eval("YORUMID") %>'>
                                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_restart_100px.png" Width="30px" />
                                            </a></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style25" style="border-left-style: solid; border-left-width: 2px; border-left-color: #4B5B4E">
                        <asp:DataList ID="DataList2" runat="server" Width="248px">
                            <ItemTemplate>
                                <table class="auto-style3">
                                    <tr>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("YORUMADSOYAD") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style16"><a href='Yorumlar.aspx?YorumID=<%# Eval("YORUMID") %>&islem=sil'>
                                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_delete_100px.png" Width="30px" />
                                            </a></td>
                                        <td class="auto-style16"><a href='adminYorumDetay.aspx?YorumID=<%# Eval("YORUMID") %>'>
                                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_restart_100px.png" Width="30px" />
                                            </a></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
</asp:Content>
