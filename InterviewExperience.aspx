<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="InterviewExperience.aspx.cs" Inherits="WebApplication2.InterviewExperience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <center>
                        <div class="row">
                            <div class="col">
                                <span class="badge alert-danger">Share Your Experience...!!!</span>
                                <br />
                               
                            </div>
                        </div>
                        
                    <div class="row">
                            <div class="col">
                               
                        
                                <center>
                                    <br />
                                    <button type="button" class="btn btn-primary" data-target="#addmodal" data-toggle="modal">Add Experiance</button>
                                </center>
                                <div class="modal" data-keyboard="false" data-backdrop="static" id="addmodal1" tabindex="-1">
                                    <div class="modal-dialog" width="100px" height="100px">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Add Experiance</h4>
                                                <button class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    
                                                  
                                                
                                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Type Here.." TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                                                    
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

                           
                       
                        
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <center>
                                    <br />
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
                                                <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Add" OnClick="Button1_Click" />
                                                <button class="btn btn-primary" type="button" data-dismiss="modal">Close</button>

                                               

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                           
                        </div>
                        </center>
            
                 </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
