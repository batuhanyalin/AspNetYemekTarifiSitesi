<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYorumDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminYorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 513px;
            text-align: center;
        }
        .auto-style7 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style11 {
            text-align: right;
            width: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style4">
            <asp:Label ID="Label2" runat="server" CssClass="admineklebaslik" Text="Yorum Güncelle"></asp:Label>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="Adı Soyadı:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Width="324px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Mail Adresi:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" Height="16px" Width="322px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label12" runat="server" CssClass="adminpaneltablobaslik" Text="Yorum:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="99px" Width="321px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" CssClass="adminpaneltablobaslik" Text="Tarih:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbltarih" runat="server" CssClass="adminpaneltablobaslik" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label14" runat="server" CssClass="adminpaneltablobaslik" Text="Yemek:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblyemek" runat="server" CssClass="adminpaneltablobaslik" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" CssClass="adminpaneltablobaslik" Text="Yorum Durum:"></asp:Label></td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Onaylı" OnClick="CheckBox1_Click"  OnCheckedChanged="CheckBox1_CheckedChanged" />
                    &nbsp;|<asp:CheckBox ID="CheckBox2" runat="server" Text="Onaysız" OnClick="CheckBox2_Click" OnCheckedChanged="CheckBox2_CheckedChanged" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="adminkatguncellebuton" Text="Güncelle" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
    
    </asp:Panel>
</asp:Content>
