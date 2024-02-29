<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="deleteemployee.aspx.cs" Inherits="deleteemployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        #centeredContent {
            text-align: center;
            margin: auto;
            width: 50%; 
            position: center;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
    <div id="centeresContent">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:350px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblWarning" runat="server" Text="Are you sure to delete this employee?" 
        Style="position:absolute; top: 300px; left: 35px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="17px" ForeColor="Red"></asp:Label>
    <asp:LinkButton ID="lnkYes" runat="server" 
        Style="position:absolute; top: 320px; left: 35px;" CssClass="mylabel" 
        onclick="lnkYes_Click">Yes</asp:LinkButton>
     <asp:LinkButton ID="lnkNo" runat="server" 
        Style="position:absolute; top: 320px; left: 100px; width: 15px;" 
        CssClass="mylabel" onclick="lnkNo_Click">No</asp:LinkButton>
        </div>
</asp:Content>