<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ISD_CW.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script lang="javascript" type="text/javascript">
        function ValidatePassword(source, arguments) {
            var data = arguments.Value.split(''); //starting by false
            arguments.IsValid = false;
            //checking length
            if (data.length < 6 || data.length > 12) return;
            //uppercase
            var uc = false;
            for (var c in data) {
                if (data[c] >= 'A' && data[c] <= 'Z') {
                    uc = true;
                    break;

                }
            }
            if (!uc)
                return;
            //lowercase verify
            var lc = false;
            for (c in data) {
                if (data[c] >= 'a' && data[c] <= 'z') {
                    lc = true;
                    break;
                }
            }
            if (!lc)
                return;
            //number verify
            var num = false;
            for (c in data) {
                if (data[c] >= '0' && data[c] <= '9') {
                    num = true; break;
                }
            }
            if (!num) return;
            //must be valid
            arguments.IsValid = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" />
            <br />
            <asp:ValidationSummary ID="ValidationSummaryRegister" runat="server" ForeColor="#CC3300" HeaderText="Please fix the following errors" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;SIGN UP TO CREATE A NEW ACCOUNT</strong><br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="FIRST NAME:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:TextBox ID="FNTextBox" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="FNValidator" runat="server" ControlToValidate="FNTextBox" ErrorMessage="First name is required" ForeColor="#CC3300" ToolTip="First name is required">*</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="LAST NAME:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="LNTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="LNValidator" runat="server" ControlToValidate="LNTextBox" ErrorMessage="Last name is required" ForeColor="#CC3300" ToolTip="Last name is required">*</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text=" ADDRESS:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxADRS" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="adresValidator" runat="server" ControlToValidate="TextBoxADRS" ErrorMessage="Address is required" ForeColor="#CC3300" ToolTip="Address is required">!!</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text=" EMAIL:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="REGemailTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="regemailValidator" runat="server" ControlToValidate="REGemailTextBox" ErrorMessage="Email is required" ForeColor="#CC3300" ToolTip="Email is required">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegEmailExpressionValidator" runat="server" ControlToValidate="REGemailTextBox" ErrorMessage="Internet email format" ForeColor="#CC3300" ToolTip="Internet email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="CONFIRM EMAIL:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="REGcEmailTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="regcemailValidator" runat="server" ControlToValidate="REGcEmailTextBox" ErrorMessage="Confirm Email is required" ForeColor="#CC3300" ToolTip="Confirm Email is required">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegCEmailExpressionValidator" runat="server" ControlToValidate="REGcEmailTextBox" ErrorMessage="Internet email format" ForeColor="#CC3300" ToolTip="Internet email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="REGemailTextBox" ControlToValidate="REGcEmailTextBox" ErrorMessage="Both email fields must match" ForeColor="#CC3300" ToolTip="Both email fields must match">*</asp:CompareValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="PASSWORD:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="REGpasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="regpasswordValidator" runat="server" ControlToValidate="REGpasswordTextBox" ErrorMessage="Password is required" ForeColor="#CC3300" ToolTip="Password is required">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomRegPasswordValidator" runat="server" ControlToValidate="REGpasswordTextBox" ErrorMessage="Please enter 6-14 characters, atleast 1 uppercase letter, 1 lowercase letter and 1 number" ForeColor="#CC3300" OnServerValidate="CustomValidatorRegPassword_ServerValidate" ToolTip="Please enter 6-14 characters, atleast 1 uppercase letter, 1 lowercase letter and 1 number" ClientValidationFunction="ValidatePassword">*</asp:CustomValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="CONFIRM PASSWORD:"></asp:Label>
            &nbsp;<asp:TextBox ID="REGcpasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="regcpasswordValidator" runat="server" ControlToValidate="REGcpasswordTextBox" ErrorMessage="Confirm password is required" ForeColor="#CC3300" ToolTip="Confirm password is required">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="REGpasswordTextBox" ControlToValidate="REGcpasswordTextBox" ErrorMessage="Both password fields must match" ForeColor="#CC3300" ToolTip="Both password fields must match">*</asp:CompareValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Signuplabel" runat="server"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="signupButton" runat="server" OnClick="Button1_Click" Text="SIGN UP" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button ID="signupcancelButton" runat="server" PostBackUrl="~/Default.aspx" Text="CANCEL" OnClick="signupcancelButton_Click" CausesValidation="False" />
            <br />

        </div>
    </form>
</body>
</html>
