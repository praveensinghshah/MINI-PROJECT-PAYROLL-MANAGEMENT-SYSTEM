<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
    body {
    background-image: url('background-image.jpg');
    background-size: cover;
    background-position: center;
    color: #fff;
    font-family: Arial, sans-serif;
}

.container {
    padding: 50px 15px;
}

.card {
    border: none;
}

.card-body {
    padding: 30px;
}

.card-title {
    font-size: 24px;
}

.card-text {
    font-size: 16px;
}

.btn {
    padding: 10px 20px;
    font-size: 18px;
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    border-radius: 5px;
}

.btn:hover {
    background-color: #0056b3;
}
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-8 text-center">
                <h1 class="display-4 mb-4">Welcome to Our Payroll Management System</h1>
                <p class="lead">Simplify and streamline managing employee salaries, benefits, and finances.</p>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-6">
                <div class="card bg-light mb-4">
                    <div class="card-body">
                        <h2 class="card-title text-center">Key Features</h2>
                        <ul class="list-group">
                            <li class="list-group-item">Employee Information Management</li>
                            <li class="list-group-item">Salary Calculation and Processing</li>
                            <li class="list-group-item">Benefits Administration</li>
                            <li class="list-group-item">Time and Attendance Tracking</li>
                            <li class="list-group-item">Reporting and Analytics</li>
                            <li class="list-group-item">And much more...</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-light mb-4">
                    <div class="card-body">
                        <h2 class="card-title text-center">Get Started</h2>
                        <p class="card-text">Whether you're a small business or a large enterprise, our system scales with your needs.</p>
                        <p class="card-text">Already have an account? <a href="Login.aspx">Log in here</a>.</p>
                        <p class="card-text">New user? <a href="Register.aspx">Create an account</a> to begin.</p>
                         </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

