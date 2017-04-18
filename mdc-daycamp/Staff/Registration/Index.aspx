<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="mdc_daycamp.Staff.Registration.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <!-- Default panel contents -->
        <table class="table-header">
            <tr>
                <th class="table-item input-name">SELECT A DATE TO REGISTER CAMPERS</th>
            </tr>
        </table>

        <hr />

        <section class="row">
            <section class="col-md-12 text-center">
                <asp:TextBox ID="datebox1" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
                <asp:Button ID="submitDate" CssClass="btn btn-primary" runat="server" Text="Next" OnClick="submitDate_Click" />
            </section>
        </section>

        <hr />

        <section class="row tableTitle">
            <div class="col-md-12">

                <div class="col-md-6 ">
                    <span class="lblstrong pull-left">
                        <asp:Label ID="date" runat="server" Text=""></asp:Label></span>
                </div>

                <div class="col-md-6">
                    <asp:LinkButton ID="addcamper" runat="server" class="btn btn-primary btn-theme pull-right" Text="Add a Camper" href="~/Staff/Registration/AddCamper.aspx" />
                </div>
            </div>
        </section>

        <div class="table-responsive">
            <asp:GridView ID="grdRegistration" runat="server" CssClass="table table-bordered row-highlight table-responsive " AutoGenerateColumns="false" DataKeyNames="ID" OnRowDeleting="grdRegistration_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName" HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header" />
                    <asp:CommandField HeaderText="Delete" HeaderStyle-CssClass="table-header" ControlStyle-CssClass="btn btn-danger" ShowDeleteButton="true" />
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
