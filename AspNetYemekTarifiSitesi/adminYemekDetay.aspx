<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminYemekDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminYemekDetay" %>

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
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style4">
            <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Label"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style4" style="border-bottom-style: dashed; border-bottom-width: 2px; border-bottom-color: #FFFFCC">
                    <asp:Image ID="Image2" runat="server" Height="185px" Width="338px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style4">
            <asp:Label ID="Label2" runat="server" CssClass="admineklebaslik" Text="Yemek Güncelle"></asp:Label>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="Yemek Ad:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Width="324px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Yemek Malzeme:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" Height="65px" TextMode="MultiLine" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label12" runat="server" CssClass="adminpaneltablobaslik" Text="Yemek Tarif:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="99px" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" CssClass="adminpaneltablobaslik" Text="Yemek Resim:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style7" Width="328px" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label13" runat="server" CssClass="adminpaneltablobaslik" Text="Yemek Puan:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7" Width="324px" Height="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label14" runat="server" CssClass="adminpaneltablobaslik" Text="Kategori:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Height="30px" Width="188px" >
                    </asp:DropDownList>
                    <strong>&nbsp;</strong><span class="auto-style2"><strong>| </strong></span>&nbsp;<asp:CheckBox ID="CheckBox1" OnClick="CheckBox1_Click" runat="server" Text="Günün Yemeği" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color:#e01858; background-color:antiquewhite; font-weight:bold;" OnCheckedChanged="CheckBox1_CheckedChanged"  />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="adminkatguncellebuton" Text="Güncelle" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </asp:Panel>
</asp:Content>
