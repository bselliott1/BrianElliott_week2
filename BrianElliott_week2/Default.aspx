<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BrianElliott_week2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 12px;
        }
        .auto-style4 {
            height: 12px;
            width: 211px;
        }
        .auto-style5 {
            width: 211px;
        }
        .auto-style6 {
            width: 211px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            height: 50px;
            width: 263px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <div class="auto-style8">
                       <h1> Price quotation</h1></div>
                </td>
                <td class="auto-style3"></td>
            </tr>            
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblSalesPrice" runat="server" Text="Sales price"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSalesPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sales price cannot be blank" ControlToValidate="txtSalesPrice" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtSalesPrice" Display="Dynamic" ErrorMessage="Must be between 10 and 1000" MaximumValue="1000" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblDiscountPercent" runat="server" Text="Discount percent"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDiscountPercent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Discount percent cannot be blank" ControlToValidate="txtDiscountPercent" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDiscountPercent" Display="Dynamic" ErrorMessage="Must be between 10 and 50" MaximumValue="50" MinimumValue="10" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblDiscount" runat="server" Text="Discount amount"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDiscountAmt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPrice" runat="server" Text="Total price"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
