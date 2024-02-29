<%@ Page Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="manageremployees.aspx.cs" Inherits="manageremployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
    .mylabel {
   position: absolute;
        top: 320px;
        left: 30px;
        font-weight: bold;
        font-size: 14px;
        color: red;
}

.grid-container {
    position: absolute;
    top: 350px;
    left: 30px;
    font-family: Tahoma;
    font-size: 12px;
    color: white;
    border-style: none;
}

.grid-container th {
    background-color: blue;
    color: white;
    font-weight: bold;
}

.grid-container td {
    padding: 10px;
}

.grid-container tr.row-style td {
    background-color: skyblue;
    color: #333333;
}

.grid-container tr.footer-style td {
    background-color: skyblue;
    font-weight: bold;
    color: white;
}

.grid-container tr.header-style td {
    background-color: blue;
    font-weight: bold;
    color: white;
}

.grid-container tr.alternating-row-style td {
    background-color: black;
}

.grid-container tr.selected-row-style td {
    background-color: #FFCC66;
    font-weight: bold;
    color: navy;
}

.grid-container .pager-style td {
    background-color: #FFCC66;
    color: #333333;
    text-align: center;
}

.error-label {
    position: absolute;
    top: 310px;
    left: 30px;
    font-weight: bold;
    color: red;
}

       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Label ID="lblPageTitle" runat="server" CssClass="mylabel" Text="Employees:"></asp:Label>
<asp:GridView ID="gridEmployees" runat="server" CssClass="grid-container" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="EmployeesID" HeaderText="EmployeesID" />
        <asp:BoundField DataField="EmpName" HeaderText="EmpName" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Designation" HeaderText="Designation" />
        <asp:BoundField DataField="LevelID" HeaderText="Level" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" />
        <asp:BoundField DataField="Passwordd" HeaderText="Passwordd" />
    </Columns>
    <FooterStyle CssClass="footer-style" />
    <RowStyle CssClass="row-style" />
    <PagerStyle CssClass="pager-style" />
    <SelectedRowStyle CssClass="selected-row-style" />
    <HeaderStyle CssClass="header-style" />
    <AlternatingRowStyle CssClass="alternating-row-style" />
</asp:GridView>
<asp:Label ID="lblError" runat="server" CssClass="error-label"></asp:Label>
    </asp:Content>