<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 125px;
            text-align: right;
        }
        .auto-style6 {
            width: 100%;
            height: 178px;
        }
        .auto-style7 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    .auto-style8 {
        width: 512px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style4">
            <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Mesaj Detayları"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" CssClass="adminpaneltablobaslik" runat="server" Text="Ad Soyad:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="tb5" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" CssClass="adminpaneltablobaslik" runat="server" Text="E-posta:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="tb5" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" CssClass="adminpaneltablobaslik" runat="server" Text="Konu:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="tb5" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" CssClass="adminpaneltablobaslik" runat="server" Text="Mesaj:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="auto-style7" runat="server" TextMode="MultiLine" Width="250px" Height="81px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table><tr><td class="auto-style8"></td></tr></table>
    </asp:Panel>
</asp:Content>
