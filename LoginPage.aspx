
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication2.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
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
                                <br />
                                <center>
                                    <h4>Welcome to ICCS Students Club</h4>
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
                                
                                <label>Email-ID</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter Email" TextMode="Email" ></asp:TextBox>

                                    
                                </div>
                                    
                                 <label>Password</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="auto-style3" ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
                                    <br />


                                </div>

                             <div class="form-group">
                                   
                                 <asp:Button ID="Button1" class="btn btn-success w-100 d-block btn-lg" runat="server" Text="Login" OnClientClick="sssss" OnClick="Button1_Click" />
                                 <br />
                               

                                </div>
                                 <div class="form-group">
                                   
                                    <a href="Registration.aspx" style="text-decoration: none"; ><input id="Button2" class="btn btn-primary w-100 d-block btn-lg" type="button" value="Register" /></a>

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
