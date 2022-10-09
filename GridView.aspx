<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="WebApplication2.GridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="dvTable" runat="server"></div>
    <asp:Table ID="tableContent1" runat="server"></asp:Table>
    <%--<table id="tableContent" border="1" runat="server"></table>--%>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="que_id">
        <Columns>
            <asp:BoundField DataField="QuestionDetails" HeaderText="question" SortExpression="question" />
            <%--<asp:BoundField DataField="qname" HeaderText="qname" SortExpression="qname" />
            <asp:BoundField DataField="qdate" HeaderText="qdate" SortExpression="qdate" />
            <asp:BoundField DataField="que_id" HeaderText="que_id" SortExpression="que_id" />

            <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
            <asp:BoundField DataField="adate" HeaderText="adate" SortExpression="adate" />
            <asp:BoundField DataField="aname" HeaderText="aname" SortExpression="aname" />--%>

            <%--
                OnRowDataBound="GridView1_RowDataBound"
                <asp:TemplateField HeaderText="Answers">
                <ItemTemplate>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="que_id">

                        <Columns>
                            <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                            <asp:BoundField DataField="adate" HeaderText="adate" SortExpression="adate" />
                            <asp:BoundField DataField="aname" HeaderText="aname" SortExpression="aname" />
                            <asp:BoundField DataField="que_id" HeaderText="que_id" SortExpression="que_id" />

                        </Columns>
                    </asp:GridView>


                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
    </asp:GridView>

</asp:Content>
