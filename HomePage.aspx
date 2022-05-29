<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">  </asp:ScriptManager> 
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        
    <ContentTemplate> 
    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
    <asp:Image ID="Image1" Height="500px" Width=100% runat="server" />
        </ContentTemplate> 
    </asp:UpdatePanel>
      
</asp:Content>

