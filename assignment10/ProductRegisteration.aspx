<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegisteration.aspx.cs" Inherits="assignment10.ProductRegisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 252px;
        }
    </style>
    <link href="OurStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
                <tr>
                    <td colspan="3"><h1>Product Details</h1></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/dell laptop.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td>
                        <asp:TextBox ID="TxtPName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPName" ErrorMessage="Product Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Category</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Mobile</asp:ListItem>
                            <asp:ListItem>Laptop</asp:ListItem>
                            <asp:ListItem>Headphone</asp:ListItem>
                            <asp:ListItem>TV</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Category Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Price</td>
                    <td>
                        <asp:TextBox ID="TxtPPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPPrice" ErrorMessage="Price Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPPrice" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Descriprion</td>
                    <td>
                        <asp:TextBox ID="TxtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDesc" ErrorMessage="Description Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Release Date</td>
                    <td>
                        <asp:Calendar ID="CalRelease" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
