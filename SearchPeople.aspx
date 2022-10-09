<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchPeople.aspx.cs" Inherits="WebApplication2.SearchPeople" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:Label ID="lsid" runat="server" Text='<%# Session["sid"].ToString() %>'></asp:Label>

    <asp:Label ID="laid" runat="server" Text='<%# Session["aid"].ToString() %>'></asp:Label>  

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
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>


                   <div class="container">
                           <div class="row">  
                               
                                  
                               <center>
                                <div class="row">
                                  <div class="col-12">
                                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                      &nbsp;
                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("lname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                     </div>
                                   </div>
                                   </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Course:&nbsp<asp:Label ID="Label4" runat="server" Text='<%# Eval("course") %>'></asp:Label>
                                    </div>
                                </div>
                                 </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Batch: &nbsp<asp:Label ID="Label2" runat="server" Text='<%# Eval("addmissionyear") %>'></asp:Label>
                                        -
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("passoutyear") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("emailid") %>'></asp:Label>
                                    </div>
                                </div>
                                   <div class="row">
                                    <div class="col-12">
                                       Area of Experties: &nbsp<asp:Label ID="Label7" runat="server" Text='<%# Eval("experties") %>'></asp:Label>
                                    </div>
                                </div>
                                   <br />
                                   
                                   </center>


                            </div>
                   
                   </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </center>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString %>" 
        SelectCommand="SELECT * FROM [Student] WHERE ([studid] = @studid)">
        <SelectParameters>
            <asp:SessionParameter Name="studid" SessionField="sid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                               

</div>
</div>
<Center>
    <asp:GridView ID="GridView2" runat="server"  DataSourceID="SqlDataSource2" AutoGenerateColumns="False" >
       
         <Columns>
            <asp:TemplateField>
                <ItemTemplate>


                   <div class="container">
                           <div class="row">  
                               
                                  
                               <center>
                                <div class="row">
                                  <div class="col-12">
                                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                      &nbsp;
                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("lname") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                     </div>
                                   </div>

                                    <div class="row">
                                    <div class="col-12">
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("emailid") %>'></asp:Label>
                                    </div>
                                </div>
                                   </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Company:&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                    </div>
                                </div>
                                 </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Designation:&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("jobrole") %>'></asp:Label>
                                    </div>
                                </div>
                                 </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Qualification:&nbsp;<asp:Label ID="Label9" runat="server" Text='<%# Eval("qualification") %>'></asp:Label>
                                    </div>
                                </div>
                                 </center>
                               <center>
                                <div class="row">
                                    <div class="col-12">
                                        Batch: &nbsp<asp:Label ID="Label2" runat="server" Text='<%# Eval("addmissionyear") %>'></asp:Label>
                                        -
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("passoutyear") %>'></asp:Label>
                                    </div>
                                </div>
                               
                                   <div class="row">
                                    <div class="col-12">
                                       Area of Experties: &nbsp<asp:Label ID="Label7" runat="server" Text='<%# Eval("experties") %>'></asp:Label>
                                    </div>
                                </div>
                                   <br />
                                    <div class="row">
                                    <div class="col-12">
                                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Message" />
                                        
                                    </div>

                                </div>
                                   <br />
                                   </center>


                            </div>
                   
                   </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
     </asp:GridView>
                        </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString %>" 
        SelectCommand="SELECT * FROM [Alumni] WHERE ([aluid] = @aluid)">
        <SelectParameters>
            <asp:SessionParameter Name="aluid" SessionField="aid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</div>
                </div>
            </div>
         </div>
   

</asp:Content>


 