<%@ Page Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="employeemessagecompose.aspx.cs" Inherits="employeemessagecompose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:260px; left:30px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblPageTitle" runat="server" Text="Compose Message:" 
        Style="position:absolute; top: 290px; left: 11px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
     <asp:Label ID="lblTo" runat="server" Text="To:" 
        Style="position:absolute; top: 310px; left: 30px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblToManager" runat="server" Text="Manager" 
        Style="position:absolute; top: 310px; left: 100px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblMessage" runat="server" Text="Message:" 
        Style="position:absolute; top: 340px; left: 30px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtMessage" runat="server" 
        Style="position:absolute; top: 340px; left: 100px; width: 284px; height: 133px;" 
        CssClass="mytextbox" TabIndex="20" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        Style="position:absolute; top: 490px; left: 298px;" BackColor="#009933" 
        BorderStyle="Groove" CssClass="mylabel" Font-Bold="True" ForeColor="Yellow" 
        onclick="btnSubmit_Click" TabIndex="30" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Please Enter the Message." Style="position:absolute; top: 260px; left: 370px;" 
        ControlToValidate="txtMessage" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
     </asp:Content>