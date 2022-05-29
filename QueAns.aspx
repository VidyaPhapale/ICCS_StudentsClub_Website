<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueAns.aspx.cs" Inherits="WebApplication2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <center>
                                       <button type="button" class="btn btn-danger" onclick="location.href = 'AddQue.aspx';">Add Question</button>
                                </center>

                            </div>

                            <div class="col-md-6">
                                <center>
                                    <button type="button" class="btn btn-info" onclick="location.href = 'GiveAns.aspx';">Give Answere</button>
                                </center>
                            </div>


                        </div>
                        </div>
                    </div>
                <br />
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>


                                 </center>
                                </div>
                            </div>
                        </div>
                    </div>
                <br />
                </div>
            </div>
        </div>
</asp:Content>
