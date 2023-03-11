<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="deneme1.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<table class="auto-style1">
            <tr>
                <td class="auto-style5">Kullanıcı Adı</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtAd" ForeColor="Red" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Şifre</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtSifre" ErrorMessage="Please enter Password" ForeColor="Red"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnGiris" runat="server" Text="Giriş" Width="125px" Style="margin-left: 0px" onclick="btnGiris_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="lblDurum" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>

</div>
    </form>
</body>
</html>