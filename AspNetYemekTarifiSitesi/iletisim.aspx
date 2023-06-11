<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="AspNetYemekTarifiSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style3 {
            font-family: "Ink Free";
            font-size: x-large;
            text-align:center;
        }
        .auto-style5{
            font-family:Helvetica;
        }
        .auto-style6 {
            font-family: "Ink Free";
            font-size: x-large;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style3" colspan="2">
    <span class="auto-style3">Mesaj Gönder</span></td>
        </tr>
        <tr>
            <td class="auto-style5">
                Adınız Soyadınız:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtadsoyad" runat="server" Width="172px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                E-postanız:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtmail" runat="server" Width="172px" CssClass="tb5" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                Konu:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtbaslik" runat="server" Width="214px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                Mesaj:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtmesaj" runat="server" Height="64px" TextMode="MultiLine" Width="374px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="btngonder" runat="server" BackColor="#99CCFF" CssClass="fb8" OnClick="Button1_Click" Text="GÖNDER" Width="238px" />
            </td>
        </tr>
    </table>
</asp:Content>
