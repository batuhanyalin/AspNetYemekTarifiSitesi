<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminGununYemegi.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminGununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }

        .auto-style5 {
            text-align: left;
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

        .auto-style17 {
            width: 514px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style6">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" Text="Göster" Width="60px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" Text="Gizle" Width="60px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Günün Yemeğini Seç"></asp:Label>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style17">

                        <asp:Label ID="Label3" runat="server" Text="Yemekler" CssClass="admineklebaslik"></asp:Label>

                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" Width="516px" >
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("YEMEKAD") %>' Font-Size="12pt"></asp:Label>
                            </td>
                            <td class="auto-style16">
                                <a href='adminYemekDetay.aspx?YemekID=<%# Eval("YEMEKID") %>'>
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_tick_box_48px.png" Width="30px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
</asp:Content>
