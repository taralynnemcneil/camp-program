<%@ Page Title="Staff Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffDashboard.aspx.cs" Inherits="mdc_daycamp.Staff.StaffDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <ul class="staffButtons">
            <!-- Payment Link -->
            <li class="col-xs-12 col-sm-6 border">
                <a href='Payments/Index.aspx'>
                    <img class="icon" src="/Images/payment-grey.svg"
                        onmouseover="this.src='/Images/payment-blue.svg'"
                        onmouseout="this.src='/Images/payment-grey.svg'" alt="Payment" />
                    <p>Payment</p>
                </a>
            </li>

            <!-- Camper Profile Link -->
            <li class="col-xs-12 col-sm-6 border">
                <a href='Campers/Index.aspx'>
                    <img class="icon" src="/Images/camperProfile-grey.svg"
                        onmouseover="this.src='/Images/camperProfile-blue.svg'"
                        onmouseout="this.src='/Images/camperProfile-grey.svg'" alt="Camper Profile" />
                    <p>Camper Profile</p>
                </a>
            </li>

            <!-- Registration Link -->
            <li class="col-xs-12 col-sm-6 border">
                <a href='Registration/Index.aspx'>
                    <img class="icon" src="/Images/registration-grey.svg"
                        onmouseover="this.src = '/Images/registration-blue.svg'"
                        onmouseout="this.src = '/Images/registration-grey.svg'" alt="Registration" />
                    <p>Registration</p>
                </a>
            </li>

            <!-- Reports Link -->
            <li class="col-xs-12 col-sm-6 border">
                <a href='Reports/Index.aspx'>
                    <img class="icon reportIcon" src="/Images/reports-grey.svg"
                        onmouseover="this.src = '/Images/reports-blue.svg'"
                        onmouseout="this.src = '/Images/reports-grey.svg'" alt="Reports" />
                    <p>Reports</p>
                </a>
            </li>

        </ul>

    </main>
    <footer>
        <section class="container text-center" style="padding-bottom: 20px;">
            <hr />
            <a href="ManageStaff.aspx" class="btn btn-primary">Manage Staff Accounts</a>

        </section>
    </footer>

</asp:Content>
