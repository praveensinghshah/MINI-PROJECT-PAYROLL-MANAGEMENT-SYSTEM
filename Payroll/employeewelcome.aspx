<%@ Page Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="employeewelcome.aspx.cs" Inherits="employeewelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:50%; left:50%; transform: translate(-50%, -50%);" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
<asp:Label ID="lblWelcome" runat="server" 
        Style="position:absolute;top:65%; left:50%; transform: translate(-50%, -50%);" Font-Bold="True" 
        ForeColor="Green" Font-Names="Tahoma" Font-Size="30px">Welcome to </asp:Label>
</asp:Content>