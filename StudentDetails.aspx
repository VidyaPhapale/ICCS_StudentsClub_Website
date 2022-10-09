<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="WebApplication2.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTables
                ();
            
        });

    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
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
                                    <h4>Member Management</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                       <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="First Name" TextMode="SingleLine"></asp:TextBox>
                                   <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server" Text="GO" OnClick="LinkButton4_Click"  ><i class="fas fa-check-circle"></i></asp:LinkButton>

                                    </div>
                                    </div>
                                </div>
                           <div class="col-md-6">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox6" runat="server" placeholder="status" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
                                    <asp:LinkButton Class="btn btn-success mr-1" ID="LinkButton1" runat="server" Text="S" OnClick="LinkButton1_Click"  ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                         <asp:LinkButton Class="btn btn-warning mr-1" ID="LinkButton2" runat="server" Text="P" OnClick="LinkButton2_Click" ><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                         <asp:LinkButton Class="btn btn-danger mr-1" ID="LinkButton3" runat="server" Text="D" OnClick="LinkButton3_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>

                                    </div>
                                    </div>
                                </div>
                                </div>
                            <br />
                           <div class="row">
                            <div class="col-md-6">
                                <label>Middle Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ReadOnly="True" placeholder="Middle Name" TextMode="SingleLine"></asp:TextBox>
                                  
                                    <br />
                                </div>
                            </div>


                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" ReadOnly="True" placeholder="Last Name" TextMode="SingleLine"></asp:TextBox>
                                  
                                    <br />
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" placeholder="Email" TextMode="Email"></asp:TextBox>

                                    
                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" ReadOnly="True" placeholder="password" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Course Name</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Area of experties</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Addmission Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-6">
                                <label>Passout Year</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                       <div class="row">
                            <div class="col-md-6">
                                <label>Phone No</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" ReadOnly="True" placeholder="Phone Number" TextMode="Number"></asp:TextBox>

                                   </div>

                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="e.g. At Post:- ,Tal:- ,Dist:- ,State:- ,Country:-" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>

                            </div>

                    </div>
                         <div class="row">
                            <div class="col-8 mx-auto">

                                <asp:Button ID="Button1" class="btn btn-danger w-100 d-block btn-lg" runat="server"  Text="Delete Permanently" OnClick="Button1_Click"   />
                            <br />
                                </div>
                             </div>
                </div>
            </div>

            <br />
        </div>



             <div class="col-md-7 ">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Student List</h4>
                                </center>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="studid" ClientIDMode="Static" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="studid" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="studid" />
                                            <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                            <asp:BoundField DataField="fname" HeaderText="FName" SortExpression="fname" />
                                            <asp:BoundField DataField="mname" HeaderText="MName" SortExpression="mname" />
                                            <asp:BoundField DataField="lname" HeaderText="LName" SortExpression="lname" />
                                            <asp:BoundField DataField="emailid" HeaderText="Email ID" SortExpression="emailid" />
                                            <asp:BoundField DataField="mobnum" HeaderText="Contact No" SortExpression="mobnum" />
                                            <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                                            <asp:BoundField DataField="experties" HeaderText="Experties" SortExpression="experties" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsClubConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
                                </center>
                                </div>
                            </div>


                        </div>
                    </div>
                 </div>











   </div>
        </div>

</asp:Content>
