<%@ Page Language="C#" MasterPageFile="~/DefaultMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
           background-color: #ffffff
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }

        .mylabel {
            font-weight: bold;
            color: red;
        }

        .mytextbox {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
        }

        .mybutton {
            background-color: #336600;
            color: yellow;
            font-weight: bold;
            border-style: Ridge;
            border-width: 0px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login-container">
        <h5 class="text-center mylabel">Login</h5>
        <asp:Label ID="lblError" runat="server" CssClass="mylabel text-center" Font-Bold="True" ForeColor="Red"></asp:Label>
        <div class="form-group">
            <label for="txtUserName" class="mylabel">User Name:</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control mytextbox" TabIndex="20"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtPassword" class="mylabel">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mytextbox" TextMode="Password" TabIndex="30"></asp:TextBox>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn mybutton" OnClientClick="return btnSubmit_Click()" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>