<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddJobUpdate.aspx.cs" Inherits="WebApplication2.AddJobUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                             
                           
                            <div class="row">
                            <div class="col-md-10 mx-auto">
                                <center>
                                   <h4>Share Apportunity</h4>
                                </center>
                             </div>
                          </div>
                         <br />
                         <br />
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Company Name</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox1" ErrorMessage="Enter Company Name" ForeColor="Red"></asp:RequiredFieldValidator>

                                   </div>
                                </div>
                             </div>
                        <div class="row">
                            <div class="col-md-10 mx-auto">

                                 <label>Job Role</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox2" ErrorMessage="Enter Job Type" ForeColor="Red"></asp:RequiredFieldValidator>


                                   </div>

                                </div>
                             </div>
                        <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Job Type</label>
                                
                                <div class="form-group">
                                   
                                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                                       <asp:ListItem Text="Internship" Value="internship" />
                                        <asp:ListItem Text="Part Time" Value="parttime" />
                                        <asp:ListItem Text="Full Time" Value="fulltimr" />
                                        
                                        </asp:ListBox>

                                        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

                                    <br />
                                </div>

                                   </div>

                             </div>

                        <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Salary</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>

                                   </div>


                                </div>
                             </div>
                        <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Last Date</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox12" ErrorMessage="Enter Last Date" ForeColor="Red"></asp:RequiredFieldValidator>


                                   </div>


                                </div>
                             </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Location</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox7" ErrorMessage="Enter Job Location" ForeColor="Red"></asp:RequiredFieldValidator>


                                   </div>


                                </div>
                             </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Qualification</label><asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox5" ErrorMessage="Enter Required Qualification" ForeColor="Red"></asp:RequiredFieldValidator>

                                  

                                </div>
                             </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Job Description</label>
                                <div class="form-group">
                                   <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" ></asp:TextBox>
                                   </div>


                                </div>
                             </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Responsibilities</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ></asp:TextBox>

                                   </div>


                                </div>
                             </div>
                         
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Experience</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"  ></asp:TextBox>

                                   </div>


                                </div>
                             </div>
                        
                         <div class="row">
                             
                            <div class="col-md-4 mx-auto">
                                 <label>Contact </label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" TextMode="Number" ></asp:TextBox>

                                   </div>

                                </div>
                             <div class="col-md-4 mx-auto">
                                 <label>Email</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" TextMode="Email" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox11" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>


                                   </div>

                                </div>
                                
                             </div>
                        
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <label>Registration Link</label>
                                <div class="form-group">
                                   
                                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" TextMode="Url" ></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  Display="Dynamic" 
                                        SetFocusOnError="True" ControlToValidate="TextBox10" ErrorMessage="Give Registration Link" ForeColor="Red"></asp:RequiredFieldValidator>


                                   </div>


                                </div>
                             </div>
                        <br />
                        <div class="row">
                            <div class="col-md-10 mx-auto">
                                 <center>
                                <div class="form-group">
                                   
                                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="SEND"  OnClick="Button1_Click" />

                                   </div>
                                     </center>
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    <br />
</asp:Content>
