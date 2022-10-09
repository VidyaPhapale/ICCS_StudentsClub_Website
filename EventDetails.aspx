<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EventDetails.aspx.cs" Inherits="WebApplication2.EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 mx-auto">
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
                                    <h4>ICCS Events</h4>
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
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1" CssClass="auto-style3" Width="742px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:TemplateField>

                                                <ItemTemplate>

                                                    <div class="container-fluid">
                                                             <div class="row">
                                                                    
                                                                
                                                                <div class="row">
                                                                    <div class="col-12">

                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>' Font-Bold="True"></asp:Label>

                                                                        </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Date:-<asp:Label ID="Label2" runat="server" Text='<%# Eval("date") %>'></asp:Label>

                                                                            &nbsp;&nbsp; Time:-<asp:Label ID="Label3" runat="server" Text='<%# Eval("time") %>'></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Venue:-<asp:Label ID="Label4" runat="server" Text='<%# Eval("venue") %>'></asp:Label>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Guest:-<asp:Label ID="Label5" runat="server" Text='<%# Eval("guest") %>'></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Description:-<asp:Label ID="Label6" runat="server" Text='<%# Eval("description") %>'></asp:Label>


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
                                                        

                                                </ItemTemplate>


                                            </asp:TemplateField>
                                        </Columns>

                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString5 %>" SelectCommand="SELECT * FROM [Event] ORDER BY date DESC"></asp:SqlDataSource>
                                </center>
                            </div>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
