<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="AspNetYemekTarifiSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
    }
    .auto-style6 {
        height: 26px;
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Ad:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txttarifad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td>
            <asp:TextBox ID="txtmalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yapılış:</td>
        <td>
            <asp:TextBox ID="txtyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="256px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Tarif Öneren:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txttarifoneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="txtmailadresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btntarifoner" runat="server" BackColor="#66CCFF" OnClick="btntarifoner_Click" Text="Tarif Öner" Width="258px" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>
