<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="Image/indirafooterlogo.png" />
                                </center>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">

                                <center>
                                    <h4>FirstName LastName</h4>
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

                                <label>Full Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="SingleLine"></asp:TextBox>


                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Course Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Area of experties</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Addmission Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="Number"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Passout Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Company Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" TextMode="SingleLine"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Job Role</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <br />
        </div>
    </div>


</asp:Content>
