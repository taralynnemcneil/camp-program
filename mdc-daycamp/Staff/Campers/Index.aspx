<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="mdc_daycamp.Staff.Campers.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <section class="tableTitle">
            <h2>Camper Profiles</h2>
            <a href="CreateProfile.aspx" class="btn btn-primary pull-right">Add Camper Profile</a>
        </section>

        <!-- Gridview Table -->
        <div class="table-responsive">
            <asp:GridView ID="grdCampers" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false" DataKeyNames="ID" OnRowDeleting="grdCampers_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName" HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header" />
                    <asp:HyperLinkField HeaderText="Registration Dates" HeaderStyle-CssClass="table-header" Text="Registration Dates" NavigateUrl="~/Staff/Campers/RegistrationDates.aspx"
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Staff/Campers/RegistrationDates.aspx?camperID={0}" />
                    <asp:HyperLinkField HeaderText="EDIT" HeaderStyle-CssClass="table-header" Text="Edit" NavigateUrl="~/Staff/Campers/CreateProfile.aspx"
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Staff/Campers/CreateProfile.aspx?camperID={0}" />
                    <asp:CommandField HeaderText="DELETE" HeaderStyle-CssClass="table-header" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>

        <section class="row">
            <section class="backBtn">
                <a href="../StaffDashboard.aspx">
                    <img src="../../Images/backButton-grey.svg" 
                    onmouseover="this.src='/Images/backButton-blue.svg'"
                    onmouseout="this.src='/Images/backButton-grey.svg'" alt="Back to Staff Home" />
                </a>
            </section>
        </section>

    </main>

</asp:Content>
