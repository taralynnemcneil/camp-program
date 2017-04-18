<%@ Page Title="Attendance Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthenticationReports.aspx.cs" Inherits="mdc_daycamp.Staff.Reports.AuthenticationReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">


        <section class="col-md-12 text-center">
            <asp:TextBox ID="datebox1" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
            <asp:Button ID="submitDate" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="submitDate_Click" />
        </section>

        <hr />


        <section class="tableTitle">
            <h2>Parent Sign IN/OUT Reports</h2>
        </section>


        <!-- Gridview Table -->
        <div class="table-responsive">
            <asp:GridView ID="grdParents" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName" HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="date" HeaderText="Date" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="signInTime" HeaderText="SIGN IN TIME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="signOutTime" HeaderText="SIGN OUT TIME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="signedInBy" HeaderText="SIGNED IN BY" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="signedOutBy" HeaderText="SIGNED OUT BY" HeaderStyle-CssClass="table-header" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="paymentTable">
                    <a href="Index.aspx" runat="server" class="btn btn-primary pull-left">Back to Reports Page</a>
                    <a href="../StaffDashboard.aspx" runat="server" class="btn btn-primary pull-right">Back to Staff Home</a>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
