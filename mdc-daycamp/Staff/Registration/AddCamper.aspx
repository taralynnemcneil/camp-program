<%@ Page Title="Register Camper" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCamper.aspx.cs" Inherits="mdc_daycamp.Staff.Registration.AddCamper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <div class="col-md-12 content">

            <div class="col-md-12">
                <div class="col-md-6 ">
                    <span class="lblstrong"></span>
                </div>


            </div>
            <section class="col-md-12 text-center">
                <asp:TextBox ID="datebox1" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
            </section>



            <!-- Default panel contents -->

        </div>

        <div class="table-responsive">
            <asp:GridView ID="grdRegistration" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false" DataKeyNames="ID" OnRowDataBound="grdRegistration_RowDataBound" OnSelectedIndexChanged="grdRegistration_SelectedIndex">
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
                    <a href="Index.aspx" runat="server" class="btn btn-primary pull-left">Back to Dates</a>
                    <a href="../StaffDashboard.aspx" runat="server" class="btn btn-primary pull-right">Back to Staff Home</a>
                </div>
            </div>
        </div>
    </main>

</asp:Content>
