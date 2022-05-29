<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication2.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150"  src="Image/indirafooterlogo.png"/>
                                </center>
                            </div>
                            </div>
                            <br />
                            <div class="row">
                            <div class="col">
                                
                                <center>
                                    <h4>Admin Login</h4>
                                </center>
                            </div>
                                </div>
                                <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                                <div class="row">
                            <div class="col">
                                
                                <label>Admin-ID</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin Email" TextMode="Email"></asp:TextBox>

                                    
                                </div>
                                    
                                 <label>Password</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                                    <br />


                                </div>

                             <div class="form-group">
                                   
                                 <asp:Button ID="Button1" class="btn btn-success w-100 d-block btn-lg" runat="server" Text="Login" OnClientClick="sssss" OnClick="Button1_Click"  />
                                 <br />
                               

                                </div>
                                 
                            </div>

                        </div>

                       

                    
                </div>
            </div>

                <br />

        </div>
                    </div>
                </div>
            

</asp:Content>
