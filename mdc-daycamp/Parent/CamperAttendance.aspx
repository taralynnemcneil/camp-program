<%@ Page Title="Camper Attendance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CamperAttendance.aspx.cs" Inherits="mdc_daycamp.Parent.CamperAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <section class="tableTitle">
            <h2>Camper Attendance</h2>
            <h3>
                <span class="lblstrong pull-right">
                    <!-- Day of Week -->
                    <asp:Label ID="currentDate" runat="server"></asp:Label>, 
                    <!-- Month Day, Year -->
                    <asp:Label ID="currentDate2" runat="server"></asp:Label>
                </span>
            </h3>
        </section>

        <!-- Gridview Table -->
        <div class="table-responsive">
            <asp:GridView ID="grdCampers" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName" HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header" />
                    <asp:HyperLinkField HeaderText="Sign In" HeaderStyle-CssClass="table-header" Text="Sign In" NavigateUrl="~/Parent/SignIn.aspx" 
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Parent/SignIn?camperID={0}" />
                    <asp:HyperLinkField HeaderText="Sign Out" HeaderStyle-CssClass="table-header" Text="Sign Out" NavigateUrl="~/Parent/SignedIn.aspx" 
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Parent/SignedIn?camperID={0}" />
                </Columns>
            </asp:GridView>
        </div>
    </main>

</asp:Content>
