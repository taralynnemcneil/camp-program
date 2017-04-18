<%@ Page Title="Registration Dates" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationDates.aspx.cs" Inherits="mdc_daycamp.Staff.Campers.RegistrationDates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <!-- Default panel contents -->
        <!--Table Form-->
        <div class="table-responsive">
            <table class="table table-hover table-striped">
            <tr class="table-header table-item input-name">
                <td>REGISTERED DATES</td>
            </tr>

            <tr>
                <td>
                    <section class="col-md-12 content">
                        <asp:TextBox ID="datePick" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </section>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton runat="server" class="btn btn-primary pull-right" OnClick="Unnamed_Click">Submit</asp:LinkButton>
                </td>
            </tr>
        </table>
        </div>

        <hr />
        <div class="table-responsive">
            <asp:GridView ID="grdRegistration" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false" DataKeyNames="ID" OnRowDeleting="grdRegistration_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="date" HeaderText="date" />
                    <asp:CommandField HeaderText="DELETE" HeaderStyle-CssClass="table-header" ControlStyle-CssClass="btn btn-danger" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="paymentTable">
                    <a href="Index.aspx" class="btn btn-primary pull-left">Back to List of Profiles</a>
                    <a href="../StaffDashboard.aspx" class="btn btn-primary pull-right">Back to Staff Home</a>
                </div>
            </div>
        </div>

    </main>

</asp:Content>
