<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminHakkimizda.aspx.cs" Inherits="AspNetYemekTarifiSitesi.adminHakkimizda" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
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
                        <asp:Label ID="Label1" runat="server" CssClass="adminpanelbaslik" Text="Hakkımızda"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style7">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="171px" Width="499px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style7">
            <tr>
                <td class="auto-style6" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #2F4F4F">
                    <asp:Button ID="Button3" CssClass="fb8" runat="server" Text="GÜNCELLE" Width="204px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
