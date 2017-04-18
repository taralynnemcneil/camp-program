<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="mdc_daycamp.Staff.Payments.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <section class="tableTitle">
            <h2>Payments</h2>
        </section>

        <!-- Gridview Table -->
        <div class="table-responsive">
            <asp:GridView ID="grdCampers" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField DataField="ID"   HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName"  HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header"/>
                    <asp:HyperLinkField HeaderText="PAYMENT RECORD" HeaderStyle-CssClass="table-header" Text="Make a Payment" NavigateUrl="~/Staff/Payments/Pay.aspx" 
                        DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Staff/Payments/Pay.aspx?camperID={0}" />
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
