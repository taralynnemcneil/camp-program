<%@ Page Title="Daily Camper Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DailyCamperSheets.aspx.cs" Inherits="mdc_daycamp.Staff.Reports.DailyCamperReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <section class="tableTitle">
            <h2>Daily Camper Sheets</h2>
        </section>



        <div class="col-md-offset-1 col-md-10 content">

            <!-- Default panel contents -->
            <table class="col-md-12 table-header">
                <tr>
                    <th class="table-item input-name">SELECT A DATE TO Camper Attendence</th>
                </tr>
            </table>

            <hr />

            <section class="col-md-12 text-center">
                <asp:TextBox ID="datebox1" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
                <asp:Button ID="submitDate" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="submitDate_Click" />
            </section>
            <asp:Label ID="rout" runat="server" Text=""></asp:Label>

            <hr />

            <div class="col-md-12">

                <div class="col-md-6 ">
                    <span class="lblstrong pull-left">
                        <asp:Label ID="date" runat="server" Text=""></asp:Label></span>

                </div>

            </div>
        </div>

        <div class="table-responsive">
            <asp:GridView ID="grdRegistration" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="familyName" HeaderText="FAMILY NAME" HeaderStyle-CssClass="table-header" />
                    <asp:BoundField DataField="firstName" HeaderText="CAMPER NAME" HeaderStyle-CssClass="table-header" />
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
