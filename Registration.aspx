<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication2.WebForm3" %>
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
                                <br />
                               <div class="d-grid gap-2 col-6 mx-auto">
                                  <button class="btn btn-outline-warning" type="button" onclick="location.href = 'StudentRegistration.aspx';" ><b>Register As Student</b></button>
                                   <button class="btn btn-outline-warning" type="button" href="AlumniRegistration" onclick="location.href = 'AlumniRegistration.aspx';"><b>Register As Alumni</b></button>
                                  </div>
                                <br />
                            </div>
                        </div>
                          <div class="row">
          <div class="col">
                <hr />
          </div>
     </div>
                        <center>
                        <a>Already Member?&nbsp</a><a href="LoginPage.aspx" style="text-decoration: none">Click Here to Login</a>
                            </center>
                    </div>
                   
                </div>
            </div>
        </div>
        </div>
    <br />
   
</asp:Content>
