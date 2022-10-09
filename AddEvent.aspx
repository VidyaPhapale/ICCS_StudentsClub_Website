<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="WebApplication2.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    <style type="text/css">
        .auto-style3 {
            margin-left: 0px;
        }
    </style>1
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                             <div class="row">
                            <div class="col-md-10 mx-auto">
                                <center>
                                    <img width="100" src="Image/indirafooterlogo.png" />
                                </center>
                             </div>
                          </div>
                            <br />
                            <div class="row">
                            <div class="col-md-10 mx-auto">
                                <center>
                                   <h4>ICCS Events</h4>
                                </center>
                             </div>
                          </div>
                             <div class="row">
                            <div class="col-md-10 mx-auto ">
                                 <label>Event ID</label> 
                                <div class="form-group">
                                    
                                  <div class="input-group"> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"  TextMode="Number"></asp:TextBox>
                                       <asp:Button ID="Button4" class="btn btn-primary w-10 d-block btn-lg" runat="server" Text="SEARCH" OnClick="Button4_Click" />
                                   </div>
                                    
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Title</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  TextMode="MultiLine" Rows="2"></asp:TextBox>
                                   
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Date</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  TextMode="Date"></asp:TextBox>
                                   
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Time</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"  TextMode="SingleLine"></asp:TextBox>
                                   
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Venue</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  TextMode="SingleLine"></asp:TextBox>
                                   
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Guest</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  TextMode="SingleLine"></asp:TextBox>
                                   
                                   </div>
                                </div>
                                 </div>
                         <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                    
                                   <label>Description</label> 
                                   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  TextMode="MultiLine" Rows="2"></asp:TextBox>
                                   
                                   </div>
                                <br />
                                </div>
                                 </div>

                        <div class="row">
                            <div class="col-md-10 mx-auto">
                                
                                <div class="form-group">
                                     <div class="input-group">
                                         
                                       <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>   <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <asp:Button ID="Button1" class="btn btn-info w-10 d-block btn-lg" runat="server" Text="INSERT" OnClick="Button1_Click" /> <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>   <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a> 
                                         <asp:Button ID="Button2" class="btn btn-warning w-10 d-block btn-lg" runat="server" Text="UPDATE" OnClick="Button2_Click" /> <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a> 
                                         <asp:Button ID="Button3" class="btn btn-danger w-10 d-block btn-lg" runat="server" Text="DELETE" OnClick="Button3_Click" /> <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a>  <a>&nbsp&nbsp  </a> 
                                       
                                         </div>

                                   </div>
                                <br />
                                </div>
                                 </div>
                               
                        
                        </div>
                    </div>
                <br />
                </div>

            <div class="col-md-7">
                 <div class="row">
                            <div class="col">
                                <center>
                                    <br />
                                <h4>Event Details</h4>
                                    <br />
                                    </center>
                                </div>
                                    </div>
                 <div class="row">
                            <div class="col">
                                <center>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1" CssClass="auto-style3" Width="783px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="eid" HeaderText="EID" ReadOnly="True" SortExpression="eid" >
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" > 
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" >
                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                                        <asp:BoundField DataField="guest" HeaderText="Guest" SortExpression="guest" />
                                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString5 %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
                                    </center>
                                </div>
                                    </div>
            </div>
            </div>
         </div>

</asp:Content>
