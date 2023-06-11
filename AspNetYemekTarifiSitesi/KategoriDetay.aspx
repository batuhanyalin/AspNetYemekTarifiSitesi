<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            text-align:center;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="baslik" Text="Label"></asp:Label>

            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="503px">
        <ItemTemplate>
            <table class="auto-style4" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #E01858">
                <tr>
                    <td colspan="2"><a href='YemekDetay.aspx?Yemekid=<%# Eval("YEMEKID") %>'>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                        </a></td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                    </td>
                    <td><strong>Puan:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
