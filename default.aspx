<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yuan's Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Yuan's Mortgage Calculator
        <br />
        <br />
        * indicates required fields<br /><br />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        Loan Amount * :<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="rfv_loanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please enter your loan amount"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest % * : <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="rfv_annualInterest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter the annual interest rate"></asp:RequiredFieldValidator>
        
        <br /><br />

        &nbsp;

        Loan Term (Yrs) * : <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="rfv_loanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter the loan term"></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Clear" runat="server" Text="Clear" />
        
        <br /><br />

        <% If Not IsPostBack Then%>
            <!-- This is the first time the page has loaded. There is nothing to display. -->

            <p>Welcom to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</p>
              
        <% Else%>
            <!-- Then the page is in postback so show the monthly payment and payment schedule. -->
                <br />
         
            Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
                <br /><br />
        
                <asp:GridView ID="loanGridView" runat="server" >
                    <Columns>
                        <asp:BoundField ReadOnly="True" />
                    </Columns>
        </asp:GridView>
        <% End If%>
            
        </div>
    </form>
</body>
</html>


