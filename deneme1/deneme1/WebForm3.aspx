<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="deneme1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large; background-color:#9933FF; color:white"; align="center">İSU İletişim Formu Bilgileri</div>
            <br />
            <br />
            <table style="margin:0 auto">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Text="ID" Width="100px"></asp:Label><asp:TextBox ID="id" runat="server"></asp:TextBox>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Text="Name" Width="100px"></asp:Label><asp:TextBox ID="name" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Text="Email" Width="100px"></asp:Label><asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Text="Subject" Width="100px"></asp:Label><asp:TextBox ID="subject" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Text="Message" Width="100px"></asp:Label><asp:TextBox ID="message" runat="server" Height="100px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr> <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Label runat="server" Width="100px" ForeColor="White" ID="ctl131" BackColor="White"></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Insert" ForeColor="White" Font-Size="Medium" BorderColor="#9933FF" BackColor="#9933FF" OnClick="Button1_Click" Width="70px" Height="30px"></asp:Button>
                        <asp:Button ID="Button2" runat="server" Text="Update" ForeColor="White" Font-Size="Medium" BorderColor="#9933FF" BackColor="#9933FF" OnClick="Button2_Click" Width="70px" Height="30px"></asp:Button>
                        <asp:Button ID="Button3" runat="server" Text="Delete" ForeColor="White" Font-Size="Medium" BorderColor="Red" BackColor="Red" OnClick="Button3_Click" Width="70px" Height="30px"></asp:Button>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:GridView runat="server" Width="600px" ID="GridView1"></asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr> <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

