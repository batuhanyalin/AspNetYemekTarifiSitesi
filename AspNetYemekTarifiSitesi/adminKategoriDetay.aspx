<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKategoriDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminKategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 513px;
            text-align: center;
        }
        .auto-style6 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
        }
        .auto-style7 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style8 {
            width: 101%;
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
    <asp:Panel ID="Panel4" runat="server">
        <div class="auto-style4" style="border-top-style: solid; border-top-width: 2px; border-top-color: #666666">
            <asp:Label ID="Label8" runat="server" CssClass="admineklebaslik" Text="Kategori Bilgileri"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="514px">
            <ItemTemplate>
                <table class="auto-style8" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #666666">
                    <tr>
                        <td class="adminpaneltablobaslik">Kategori Ad</td>
                        <td class="adminpaneltablobaslik" >Kategori Adet</td>
                        <td class="adminpaneltablobaslik">Kategori Resim</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("KATEGORIAD") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("KATEGORIADET") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="kategoriresim" runat="server" Height="30px" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style4">
            <asp:Label ID="Label2" runat="server" CssClass="admineklebaslik" Text="Kategori Güncelle"></asp:Label>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Text="Kategori Ad:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label4" runat="server" Text="Kategori Adet:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Kategori Resim:" CssClass="adminpaneltablobaslik"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style7" Width="234px" />
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
