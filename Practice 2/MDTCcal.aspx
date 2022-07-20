<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MDTCcal.aspx.cs" Inherits="Practice_2.MDTCcal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Marine Dues Tarrif Calculator</title>
    <link href="" rel="stylesheet"/>
   
   
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 38px;
        }
    </style>
   
   
</head>
<body>
    <h1 class="Text-center">Marine Dues Tarrif Calculator</h1>
    <form id="form1" runat="server">
        <div class="container">
            
            
            <asp:Label ID="Label2" runat="server" Text="Vessel GRT:"></asp:Label>
            
            
            <asp:TextBox ID="vgrt" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Berth Stay (Hours)"></asp:Label>
&nbsp;<asp:TextBox ID="bstay" runat="server"></asp:TextBox>


            
            <asp:Label ID="Label4" runat="server" Text="US$ Rate"></asp:Label>
            <asp:TextBox ID="Textusrate" runat="server"></asp:TextBox>
            <asp:DropDownList ID="AmountType" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="0">USD</asp:ListItem>
                <asp:ListItem Value="1">INR</asp:ListItem>
            </asp:DropDownList>
            <br />
            <table class="w-100">
                <tr>
                    <td class="auto-style1">Service Description</td>
                    <td class="auto-style3">Unit
                        <br />
                        Qty</td>
                    <td class="auto-style2">&nbsp;&nbsp;Tariff
                        <br />
                        (in USD)</td>
                    <td>Minimum Amt
                        <br />
                        (in USD)</td>
                    <td>Total Service Amt<br />
&nbsp;&nbsp; (USD)</td>
                </tr>
                <tr>
                    <td class="auto-style1">Port Dues (per GRT) </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="MPdues" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="-"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Pilotage (per GRT) </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="-"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Berth Hire (per GRT/ Hours)</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="-"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Anchorage (in Hours)</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextAnchor" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td class="auto-style1">Tug For Transportation </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Texttugt" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td class="auto-style1">Additional&nbsp; Tug For Pilotage (in Hours)</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Texttugp" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="4">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" Width="144px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="4">Gross Amount (exclusive taxes*) </td>
                    <td class="auto-style4" id="Result"  >
                        <asp:Label ID="Label5" runat="server" ForeColor="#CCCCCC" Text=" 0.0"></asp:Label>
                    </td>
                </tr>
            </table>


            
        </div>
    </form>
</body>
</html>
