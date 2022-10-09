<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewJobUpdate.aspx.cs" Inherits="WebApplication2.ViewJobUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<div class="container">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <center>
                            <h4>Apportunities For You...!!!</h4>
                            <hr />
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 mx-auto">
                            <center>
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField>


                                        <ItemTemplate>
                                             <div class="container">
                                                  <div class="row">
                                                      <div class="card">
                                                          <div class="card-body">
                                                      <div class="row">
                                                       <div class="col-12">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("compname") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("jobrole") %>' Font-Bold="True"></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <label Font-Bold="True"><b>Job Type</b></label><br />
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("jobtype") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                           Salary:&nbsp <asp:Label ID="Label4" runat="server" Text='<%# Eval("salary") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <Label Font-Bold="True"> <b>Qualification</b></Label><br />
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("qualification") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <Label Font-Bold="True"><b> Job Description</b></Label><br />
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("jobdesc") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <Label Font-Bold="True"><b> Responsibility</b></Label><br />
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("responsibilities") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                          <div class="row">
                                                       <div class="col-12">
                                                           <Label ><b> Experiance Required</b></Label>&nbsp&nbsp
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("experiance") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <Label > <b>Contact </b></Label><br />
                                            No:&nbsp<asp:Label ID="Label9" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                                                           &nbsp;&nbsp;<br />
                                                           Email:&nbsp<asp:Label ID="Label11" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                       <div class="row">
                                                       <div class="col-12">
                                                         <b>Last Date</b> &nbsp  <asp:Label ID="Label12" runat="server" Text='<%# Eval("lastdate") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                           <div class="row">
                                                       <div class="col-12">
                                                           <Label ><b>Apply Here</b></Label><br />
                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("link") %>'></asp:Label>
                                                      </div>
                                                  </div>
                                                       
                                                       <div class="row">
                                                       <div class="col-12">
                                                          
                                                      </div>
                                                  </div>
                                                       <div class="row">
                                                       <div class="col-12">
                                                          <hr />
                                                      </div>
                                                  </div>
                                                      <div class="row">
                                                       <div class="col-12">
                                                          
                                                      </div>
                                                  </div>


                                                   </div>
                                                 </div>
                                            </div>
                                                 </div>
                                        </ItemTemplate>


                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                                </center>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString %>" SelectCommand="SELECT * FROM [JobDetails] ORDER BY lastdate DESC"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>

            <br />
        </div>
    </div>

</div>



</asp:Content>
