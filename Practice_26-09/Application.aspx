<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs"
    ClientIDMode="Static" Inherits="Practice_26_09.Application"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function validation() {
                var name = document.getElementById('txtname').value;
                var email = document.getElementById('txtemail').value;
                var mobile = document.getElementById('txtmobile').value;
                var website = document.getElementById('txtwebsite').value;

                if (name.trim() == "") {
                    document.getElementById('lblmsg').innerHTML = "Please enter name";
                    return false;
                }
                if (name.trim() != "") {
                    var filter = /^[a-zA-Z\s\/\w-]*$/;
                    if (!filter.test(name)) {
                        document.getElementById('lblmsg').innerHTML = "";
                        document.getElementById('lblmsg').innerHTML = 'Please provide a valid name.';
                        return false;
                    }
                }
                if (email.trim() == "") {
                    document.getElementById('lblmsg').innerHTML = "Please enter email";
                    return false;
                }
                if (email.trim() != "") {
                    
                    var filter = /^[a-zA-Z\s\/\w-\,]*$/;
                    if (!filter.test(email)) {
                        document.getElementById('lblmsg').innerHTML = "";
                        document.getElementById('lblmsg').innerHTML = 'Please provide a valid email.';
                        return false;
                    }
                }
                if (mobile.trim() == "") {
                    document.getElementById('lblmsg').innerHTML = "Please enter mobile no";
                    return false;
                }
                if (mobile.trim() != "") {
                    
                    var filter = /^[0-9]+$/;
                    if (!filter.test(mobile)) {
                        document.getElementById('lblmsg').innerHTML = "";
                        document.getElementById('lblmsg').innerHTML = 'Please provide numbers only.';
                        return false;
                    }
                }
                if (website.trim() == "") {
                    document.getElementById('lblmsg').innerHTML = "Please enter Website";
                    return false;
                }
                if (website.trim() != "") {

                    var filter = /^[0-9]+$/;
                    if (!filter.test(website)) {
                        document.getElementById('lblmsg').innerHTML = "";
                        document.getElementById('lblmsg').innerHTML = 'Please provide numbers only.';
                        return false;
                    }
                }
                document.getElementById('lblmsg').innerHTML = "";
                return true;
            }
        </script>
        <div>
            <asp:Table ID="Table1" runat="server" Height="405px" Width="1352px" GridLines="Both">

                <asp:TableRow>
                    <asp:TableCell>
                        Name:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Please Enter Name"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Email:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Please Enter Email"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Mobile (with country code):
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtmobile" runat="server" placeholder="Please Enter Mobile No."></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Website :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtwebsite" runat="server" placeholder="Please Enter Website"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Gender:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlgender" runat="server">
                            <asp:ListItem Value="">
                                Please Select
                            </asp:ListItem>
                            <asp:ListItem Value="Male">
                                Male
                            </asp:ListItem>
                            <asp:ListItem Value="Female">
                                Female
                            </asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        IsActive:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton ID="RadioButton1" runat="server"/>Yes |<asp:RadioButton ID="RadioButton2" runat="server" />No 
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="submit" runat="server" Text="Save" OnClientClick="return validation()" OnClick="submit_Click" />
            <br />
        </div>
        <asp:Label ID="lblmsg" runat="server" ></asp:Label>
    </form>
</body>
</html>
