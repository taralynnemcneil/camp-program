<%@ Page Title="Manage Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageStaff.aspx.cs" Inherits="mdc_daycamp.Staff.ManageStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <section class="tableTitle">
            <h2>Manage Staff Accounts</h2>
        </section>

        <!-- Gridview Table -->
        <div class="table-responsive">
            <asp:GridView ID="grdStaff" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="UserName" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="Email" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:CommandField HeaderText="Delete" HeaderStyle-CssClass="table-header" ControlStyle-CssClass="btn btn-danger" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>

        <section class="row">
            <section class="backBtn">
                <a href="StaffDashboard.aspx">
                    <img src="../../Images/backButton-grey.svg" 
                    onmouseover="this.src='/Images/backButton-blue.svg'"
                    onmouseout="this.src='/Images/backButton-grey.svg'" alt="Back to Staff Home" />
                </a>
            </section>
        </section>

    </main>

</asp:Content>
