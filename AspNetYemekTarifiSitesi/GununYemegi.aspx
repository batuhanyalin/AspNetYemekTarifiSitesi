<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="AspNetYemekTarifiSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-weight: normal;
    }
        .auto-style5 {
            height: 23px;
        }
        .auto-style9 {
            height: 34px;
        }
        .auto-style10 {
            width: 223px;
            text-align:center;
        }
        .auto-style11 {
            height: 23px;
            width: 105px;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td style="text-align: center" colspan="2" class="auto-style9">
                    <h3>&nbsp;<asp:Label ID="Label3" runat="server" CssClass="baslik" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                    </h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-bottom-style: dashed; border-bottom-width: 1px; border-bottom-color: #000080" class="auto-style12">
                    <asp:Image ID="Image2" runat="server" Height="140px" ImageUrl='<%# Eval("YEMEKRESIM") %>' Width="263px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-bottom-style: dashed; border-bottom-width: 1px; border-bottom-color: #000080"><span class="auto-style4"><strong>Malzemeler: </strong></span>
                    <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border-bottom-style: dashed; border-bottom-width: 1px; border-bottom-color: #000080;" colspan="2">
                    <strong>Tarif: </strong>
                    <asp:Label ID="Label5" runat="server" style="text-align: left" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Tarih:&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                    </strong>
                </td>
                <td class="auto-style11"><strong>Puan: </strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
