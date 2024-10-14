<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 100px;
        }
    </style>
    <script type="text/javascript">
        function toggleLabel() {
            var label = document.getElementById('<%= lblUsername.ClientID %>'); // Username/Email label
            var librarianRadio = document.getElementById('<%= rdolibrary.ClientID %>'); // Librarian radio button
            var studentRadio = document.getElementById('<%= rdosudent.ClientID %>'); // Student radio button

            // Change label text based on selected radio button
            if (librarianRadio.checked) {
                label.innerText = "UserName :";
                document.getElementById('<%= txtuname.ClientID %>').setAttribute('placeholder', 'Enter Username'); // Optional placeholder
            } else if (studentRadio.checked) {
                label.innerText = "Email :";
                document.getElementById('<%= txtuname.ClientID %>').setAttribute('placeholder', 'Enter Email'); // Optional placeholder
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="head">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/dlibrary.png" Height="90px" Width="321px" />
        </div>
        <div id="main">
            <div id="img">
                <table class="style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/lin3.png" Height="314px" 
                                style="margin-left: 94px" Width="561px" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="login">
                <table class="tbl">
                    <tr>
                        <td class="tblhead" colspan="2">Login Area</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RadioButton ID="rdolibrary" runat="server" Checked="True" 
                                ForeColor="black" GroupName="a" Text="Librarian" 
                                AutoPostBack="false" OnClick="toggleLabel();" />
                            &nbsp;<asp:RadioButton ID="rdosudent" runat="server" ForeColor="black" 
                                GroupName="a" Text="Student" 
                                AutoPostBack="false" OnClick="toggleLabel();" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            <asp:Label ID="lblUsername" runat="server" Text="UserName :" CssClass="lbl"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="175px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtuname" ErrorMessage="!!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Password :</td>
                        <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" Width="175px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtupass" ErrorMessage="!!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Font-Size="11px" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" 
                                Width="80px" Font-Size="10pt" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
