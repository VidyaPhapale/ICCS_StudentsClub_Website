<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GiveAns.aspx.cs" Inherits="WebApplication2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="card">
                    <div class="card-body">
                           <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge alert-danger">Give Answer...!!!</span>
                                    <br />
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="Type Here..." TextMode="MultiLine" Rows="4" Width="364px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="SAVE" OnClick="Button1_Click" />

                                </center>
                                <br />
                            </div>
                        </div>
                        </div>
                    </div>
               <br />
                </div>
            </div>
        </div>

</asp:Content>
