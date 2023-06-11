<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="AspNetYemekTarifiSitesi.Mesajlar" %>

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
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Mesajlar"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <table class="auto-style18">
                <tr>
                    <td class="auto-style25">
                        <asp:DataList ID="DataList1" runat="server" Width="505px">
                            <ItemTemplate>
                                <table class="auto-style3">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("MESAJADSOYAD") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style16">
                                            <a href='MesajDetay.aspx?MesajID=<%# Eval("MESAJID") %>'>
                                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_received_48px.png" Width="30px" />
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
