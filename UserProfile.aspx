<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto ">
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
                                    <h4>Your Profile</h4>
                                    <span>Account Status-</span>
                                    <asp:Label ID="Label1" runat="server" class="badge alert-info" Text="Active"></asp:Label>
                                    
                                   
                                </center>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>First Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="First Name" TextMode="SingleLine"></asp:TextBox>

                                   
                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Middle Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  placeholder="Middle Name" TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>


                            <div class="col-md-4">
                                <label>Last Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Last Name" TextMode="SingleLine"></asp:TextBox>
                                   <br />
                                </div>
                            </div>

                        </div>
                            
                           

                        <div class="row">
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  placeholder="Email" TextMode="Email"></asp:TextBox>

                                    
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" ReadOnly="True" placeholder="password" TextMode="SingleLine"></asp:TextBox>
                                    <br />
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

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Addmission Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"  TextMode="SingleLine"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Passout Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                       <div class="row">
                            <div class="col-md-6">
                                <label>Phone No</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"  placeholder="Phone Number" TextMode="SingleLine"></asp:TextBox>

                                   </div>

                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="" TextMode="SingleLine" ></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="e.g. At Post:- ,Tal:- ,Dist:- ,State:- ,Country:-" TextMode="SingleLine" Rows="2"></asp:TextBox>
                                    <br />
                                </div>

                            </div>

                    </div>
                         <div class="row">
                            <div class="col">

                                <center>
                                   
                                    <span class="badge alert-info">Change Password</span>
                                    
                                </center>
                              
                            </div>
                            

                        </div>
                          <div class="row">
                            <div class="col-md-6">
                                <label>Old Password</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ReadOnly="True" placeholder="" TextMode="SingleLine"></asp:TextBox>

                                    
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>New Password</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  placeholder="Enter New password" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                            </div>


                        </div>

                         <div class="row">
                        
                            <div class="col-md-8 mx-auto">
                                <div class="form-group">
                            <center>
                            <asp:Button ID="Button1" class="btn btn-primary btn-block w-100 btn-lg" runat="server" ValidationGroup="Group" Text="Update" OnClick="Button1_Click"   />
                            <br />

                               </center>
                                </div>
                        </div>
                        </div>
                    </div>
                </div>

            </div>


          <!--  <div class="col-md-7">
                 <div class="card">
                    <div class="card-body">
                        <div class="row">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <h4>Question Answer Section</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                     <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:GridView ID="GridView1" Class="table table-striped table-bordered" runat="server"></asp:GridView>
                                </center>
                            </div>
                        </div>
                            </div>
                        <br />
                         <div class="row">
                            <div class="col">
                                <center>
                                     <h4>Quiz Section</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <asp:GridView ID="GridView2" Class="table table-striped table-bordered" runat="server"></asp:GridView>
                                </center>
                            </div>
                        </div>
                </div>

            <br />

        </div>
</div>
            </div> -->

    </div>
       </div>
</asp:Content>
