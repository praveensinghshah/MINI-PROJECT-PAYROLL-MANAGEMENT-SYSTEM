<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Contact Us</h2>
    <div>
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtMessage">Message:</label>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
            </div>
        </div>
</asp:Content>

