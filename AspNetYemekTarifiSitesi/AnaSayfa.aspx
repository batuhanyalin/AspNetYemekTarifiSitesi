<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="AspNetYemekTarifiSitesi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            height: 24px;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style7 {
            height: 23px;
            text-align:center;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4" colspan="3">
                        <h3>
                         <a href="YemekDetay.aspx?Yemekid=<%# Eval("YEMEKID") %>">  <asp:Label ID="Label3" runat="server" BackColor="#E01858" CssClass="baslik" Text='<%# Eval("YEMEKAD") %>'></asp:Label> </a>                     
                            </h3>
                    </td>
                </tr> 
                <tr>
                    <td class="auto-style7" colspan="3" style="border-bottom-style:dashed; margin-bottom:10px; border-bottom-width: 1px; border-bottom-color: #000080">
                        <asp:Image ID="Image2" runat="server" Height="112px" ImageUrl='<%# Eval("YEMEKRESIM") %>' Width="214px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="3" style="border-bottom-style: dashed; border-bottom-width: 1px; border-bottom-color: #000080"><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="border-bottom-style: dashed; border-bottom-width: 1px; border-bottom-color: #000080"><strong>Tarif:</strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style6" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                    </td>
                    <td><strong>Puan:</strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style5" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                    </td>
                    <td><strong>Kategori:</strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style5" Text='<%# Eval("KATEGORIAD") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style3">
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #E01858" class="auto-style8">
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
