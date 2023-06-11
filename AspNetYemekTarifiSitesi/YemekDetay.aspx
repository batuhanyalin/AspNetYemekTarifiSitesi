<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style3 {
            font-size: xx-large;
            font-family:'Segoe Script';
            background-color:#e01858;
            color:white;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            height: 23px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">&nbsp;Yorum Yap
                            <asp:Image ID="Image1" runat="server" Height="23px" ImageUrl="~/Resimler/icons8_comments_480px.png" Width="23px" />
                        </td>
                    </tr>
                </table>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style8">Adınız Soyadınız:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtadsoyad" runat="server" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">E-Posta Adresiniz:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txteposta" runat="server" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Yorumunuz:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtyorum" runat="server" Height="105px" TextMode="MultiLine" Width="370px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table class="auto-style4">
                    <tr>
                        <td style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #E01858">
                            <asp:Button ID="btnyorumyap" runat="server" BackColor="#66CCFF" OnClick="btnyorumyap_Click" Text="GÖNDER" Width="267px" />
                        </td>
                    </tr>
                </table>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <table class="auto-style4">
                            <tr>
                                <td><strong>Yorum Sahibi:</strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YORUMADSOYAD") %>' Font-Size="Small"></asp:Label>
                                    &nbsp;<strong>Mail: </strong>
                                    <asp:Label ID="Label7" runat="server" Font-Size="Small" Text='<%# Eval("YORUMMAIL") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6"><strong>Yorum:</strong>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YORUM") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #E01858"><strong>Yorum Tarihi:</strong>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YORUMTARIH") %>' Font-Size="Small"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
