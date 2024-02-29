<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="employees.aspx.cs" Inherits="employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .page-title,
        .grid-view,
        .error-label {
            text-align: center;
        }

        .page-title {
            position: absolute;
            top: 320px;
            left: 30px;
            font-weight: bold;
            font-size: 14px;
            color: red;
        }

        .grid-view {
            position: absolute;
            top: 350px;
            left: 30px;
            font-family: Tahoma;
            font-size: 10px;
            color: #333333;
        }

        .error-label {
            position: absolute;
            top: 310px;
            left: 30px;
            font-weight: bold;
            font-size: 14px;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:Label ID="lblPageTitle" runat="server" Text="Employees:" CssClass="page-title" />
    <asp:GridView ID="gridEmployees" runat="server" CssClass="grid-view" CellPadding="10" AutoGenerateColumns="False" onrowdeleting="gridEmployees_RowDeleting">
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <Columns >
        <asp:BoundField DataField="EmployeesID" HeaderText="EmployeesID" />
        <asp:BoundField DataField="EmpName" HeaderText="EmpName" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Designation" HeaderText="Designation" />
        <asp:BoundField DataField="LevelID" HeaderText="Level" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" />
        <asp:BoundField DataField="Passwordd" HeaderText="Password" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
<asp:Label ID="lblError" runat="server" CssClass="error-label" />
    <asp:HyperLink ID="hypNewEmployee" runat="server" 
        Style="position:absolute; top: 320px; left: 100px;" CssClass="mylabel" 
        Font-Bold="True" NavigateUrl="newemployee.aspx">New Employee</asp:HyperLink>
</asp:Content>