<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="AspNetYemekTarifiSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td style="text-align:center;">
                <asp:Label ID="Label3" runat="server" CssClass="baslik" Text="Hakkımızda"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server" Width="511px">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("HAKKIMIZDA") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:Image ID="Image1" runat="server" CssClass="helloworld" Height="107px" ImageUrl="~/Resimler/hello worldd.png" Width="518px" />
</asp:Content>
