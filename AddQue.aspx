<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddQue.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge alert-danger">Add Your Question Here..??</span>
                                </center>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <label>Select Category</label>
                                <div class="form-group">
                                     
                                         
                                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" >
                                         <asp:ListItem Text="C" Value="c" />
                                         <asp:ListItem Text="DBMS" Value="dbms" />
                                         <asp:ListItem Text="Data Structure" Value="ds" />
                                         <asp:ListItem Text="C++" Value="cpp" />
                                         <asp:ListItem Text="C#" Value="csharp" />
                                         <asp:ListItem Text="Java" Value="java" />
                                         <asp:ListItem Text="Python" Value="python" />
                                         <asp:ListItem Text="General" Value="general" />
                                    </asp:ListBox>

                                </div>
                                <br />
                                   
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <label>Que id</label>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                                </center>
                                <br />
                            </div>
                        </div>
                        <br />

                         <div class="row">
                            <div class="col">
                                <center>
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Type question here.." TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                </center>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Type ans here.." TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                </center>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Add" OnClick="Button1_Click" />
                                </center>
                            </div>
                        </div>
                        <br />
                      
                    </div>
                </div>
                <br />
            </div>











            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                       <div class="row">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString5 %>" SelectCommand="SELECT * FROM [QuestionAnswer]"></asp:SqlDataSource>
                           
                            <div class="col">
                                <center>
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowCustomPaging="True" AutoGenerateColumns="False" DataKeyNames="que_id" DataSourceID="SqlDataSource1" Width="941px">
                                    <Columns>
                                        <asp:BoundField DataField="que_id" HeaderText="que_id" ReadOnly="True" SortExpression="que_id" />
                                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                        <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                                        <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                    </Columns>
                                </asp:GridView>
                                    </center>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <br />
            </div>
        </div>
    
</asp:Content>
