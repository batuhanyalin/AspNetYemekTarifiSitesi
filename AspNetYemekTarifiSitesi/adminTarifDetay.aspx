<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminTarifDetay.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminTarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style7 {
            text-align: left;
        }

        .auto-style8 {
            height: 23px;
            text-align: left;
        }

        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            color: palegoldenrod;
            font-family: Corbel;
            font-size: 16px;
            font-weight: bold;
            text-align: right;
            width: 141px;
        }
        .auto-style11 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <div class="auto-style9">
                    <asp:Label ID="Label3" runat="server" CssClass="adminpanelbaslik" Text="Tarif Detayları"></asp:Label>
                </div>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10">Tarif Ad:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="textb1" runat="server" CssClass="tb5" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarifi Gönderen:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="textb2" runat="server" CssClass="tb5" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">E-Posta:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="textb3" runat="server" CssClass="tb5" Width="210px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif Malzeme:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="textb4" runat="server" Height="71px" CssClass="auto-style11" TextMode="MultiLine" Width="349px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="textb5" runat="server" Height="105px" CssClass="auto-style11" TextMode="MultiLine" Width="353px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif Resim:</td>
                        <td class="auto-style7">
                            <asp:FileUpload ID="FileUpload1" CssClass="auto-style11" runat="server" Width="184px" />
                        &nbsp;|&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="62px" Width="154px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif Kategori:</td>
                        <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Height="16px" Width="188px" >
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Tarif Durum:</td>
                        <td class="auto-style7">
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" OnClick="CheckBox1_Click" style="font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;color:#e01858; background-color:antiquewhite; font-weight:bold;" Text="Onaylandı." />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Button ID="button1" runat="server" OnClick="btnyorumyap_Click" CssClass="auto-style12" Text="GÜNCELLE" Width="225px" />
            </td>
        </tr>
    </table>
</asp:Content>
