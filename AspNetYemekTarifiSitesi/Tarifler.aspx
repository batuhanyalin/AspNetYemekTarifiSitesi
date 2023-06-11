<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="AspNetYemekTarifiSitesi.Tarifler" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" Text="Göster" Width="60px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" Text="Gizle" Width="60px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Tarifler"></asp:Label>
                    </td>
                </tr>
            </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style25">
                        <asp:Panel ID="Panel3" runat="server">      
                                <table class="auto-style18">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label3" runat="server" CssClass="admineklebaslik" Text="ONAYLI TARİFLER"></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label4" runat="server" CssClass="admineklebaslik" Text="ONAYSIZ TARİFLER"></asp:Label>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td class="auto-style25">
                                            <asp:DataList ID="DataList3" runat="server" Width="260px">
                                                <ItemTemplate>
                                                    <table class="auto-style3">
                                                        <tr>
                                                            <td class="auto-style5">
                                                                <asp:Label ID="Label5" runat="server" Font-Size="12pt" Text='<%# Eval("TARIFAD") %>'></asp:Label>
                                                            </td>
                                                            <td class="auto-style16"><a href='adminTarifDetay.aspx?TarifID=<%# Eval("TARIFID") %>'>
                                                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_test_passed_40px.png" Width="30px" />
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
                                                                <asp:Label ID="Label6" runat="server" Font-Size="12pt" Text='<%# Eval("TARIFAD") %>'></asp:Label>
                                                            </td>
                                                            <td class="auto-style16"><a href='adminTarifDetay.aspx?TarifID=<%# Eval("TARIFID") %>'>
                                                                <asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_test_passed_40px.png" Width="30px" />
                                                                </a></td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                </table>             
                        </asp:Panel>
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>
