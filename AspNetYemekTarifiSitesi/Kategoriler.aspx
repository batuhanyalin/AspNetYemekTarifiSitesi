<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="AspNetYemekTarifiSitesi.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            width: 100%;
        }

        .auto-style8 {
            width: 75px;
        }

        .auto-style12 {
            color: palegoldenrod;
            font-family: Corbel;
            font-size: 20px;
            font-weight: bold;
            width: 152px;
        }

        .auto-style14 {
            width: 74px;
        }

        .auto-style15 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
        }

        .auto-style16 {
            text-align: right;
        }

        .auto-style17 {
            width: 514px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style6">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Göster" Width="60px" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Gizle" Width="60px" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Kategoriler"></asp:Label>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="auto-style17">

                        <asp:Label ID="Label3" runat="server" Text="Kategori Ekleme Paneli" CssClass="admineklebaslik"></asp:Label>

                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style12">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="tb5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" CssClass="fb8" runat="server" Width="204px" />
                </td>
            </tr>
        </table>
        <table class="auto-style7">
            <tr>
                <td class="auto-style6" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #2F4F4F">
                    <asp:Button ID="Button3" CssClass="auto-style15" runat="server" Text="Ekle" Width="204px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" Width="516px" >
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("KATEGORIAD") %>' Font-Size="12pt"></asp:Label>
                            </td>
                            <td class="auto-style16">
                              <a href="Kategoriler.aspx?KategoriID=<%# Eval("KATEGORIID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_delete_100px.png" Width="30px" /> </a>
                            </td>
                            <td class="auto-style16">
                                <a href="adminKategoriDetay.aspx?KategoriID=<%# Eval("KATEGORIID") %>">
                                    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/icons8_restart_100px.png" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
</asp:Content>
