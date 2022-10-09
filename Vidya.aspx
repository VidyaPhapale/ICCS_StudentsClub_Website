<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Vidya.aspx.cs" Inherits="WebApplication2.Vidya" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
        .auto-style4 {
            margin-right: 153px;
            margin-left: 0px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-6">
                                <center>
                                    <button type="button" class="btn btn-danger" data-target="#addmodal" data-toggle="modal">Add Question</button>
                                </center>
                                <div class="modal" data-keyboard="false" data-backdrop="static" id="addmodal" tabindex="-1">
                                    <div class="modal-dialog" width="100px" height="100px">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Add Question</h4>
                                                <button class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>Select Category</label>
                                                    <div class="form-group">


                                                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
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
                                                    <label for="question">Question</label>
                                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Type Here.." TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                                </div>


                                            </div>
                                            <div class="modal-footer">
                                                <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Add" OnClick="Button1_Click" />
                                                <button class="btn btn-primary" type="button" data-dismiss="modal">Close</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-6">
                                <center>
                                    <button type="button" class="btn btn-info" onclick="location.href = 'GiveAns.aspx';">Give Answer</button>
                                </center>
                            </div>
                        </div>




                    </div>




                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString5 %>" SelectCommand="SELECT * FROM [QuestionAnswer] ORDER BY qdate DESC;"></asp:SqlDataSource>
                                <center>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="que_id" DataSourceID="SqlDataSource1" CssClass="auto-style4"  Width="1034px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>

                                            <asp:TemplateField>
                                                <ItemTemplate>

                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="row">
                                                                        <div class="col-12">

                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("qname") %>' Font-Bold="False"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("question") %>' Font-Size="Large"></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">

                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("qdate") %>' Font-Size="X-Small"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("answer") %>'></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("aname") %>'></asp:Label>

                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">

                                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("adate") %>' Font-Size="X-Small"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">

                                                                            <hr />
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">

                                                                            <button id="Button2" type="button" runat="server" data-target="#ansmodal" data-toggle="modal" class="btn btn-primary">GIVE ANS</button>
                                                                            <div class="modal" data-keyboard="false" data-backdrop="static" id="ansmodal" tabindex="-1">
                                                                                <div class="modal-dialog" width="100px" height="100px">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title">Give Answer</h4>
                                                                                            <button class="close" data-dismiss="modal">&times;</button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                            <div class="form-group">
                                                                                                <label for="question">Answer</label>
                                                                                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Type Here.." TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="modal-footer">

                                                                                            <asp:Button ID="Button10" runat="server" Text="Button" Onclick="Button3_Click" />

                                                                                            <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="Save" />
                                                                                            <button class="btn btn-primary" type="button" data-dismiss="modal">Close</button>

                                                                                        </div>
                                                                                    </div>
                                                                                </div>
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
                            </div>



                        </div>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</asp:Content>