<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="mdc_daycamp.Staff.Reports.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">
    
        <section class="tableTitle">
            <h2>Reports</h2>
        </section>
        
        <div class="row">
            <div class="col-sm-12">

                <div class="col-md-offset-3 col-md-6 table-item">
                    <a href="DailyCamperSheets.aspx" runat="server" class="btn btn-primary font-25 wid-100 btn-theme btn-block">Daily Camper Sheets</a>
                    <!--<input type="button" class="btn btn-primary font-25 btn-theme btn-block" name="create-profile" value="Daily Camper Sheets" />-->
                </div>

                <div class="col-md-offset-3 col-md-6 table-item">
                    <a href="AuthenticationReports.aspx" runat="server" class="btn btn-primary font-25 wid-100 btn-theme btn-block">Parent Sign IN/OUT Reports</a>
                    <!--<input type="button" class="btn btn-primary font-25 btn-theme  btn-block" name="create-profile" value="Parent Sign IN/OUT Reports" />-->
                </div>

                <div class="col-md-offset-3 col-md-6 table-item">
                    <a href="Stats.aspx" runat="server" class="btn btn-primary font-25 wid-100 btn-theme btn-block">Stats Report</a>
                    <!--<input type="button" class="btn btn-primary font-25 btn-theme  btn-block" name="create-profile" value="Stats Report" />-->
                </div>

            </div>
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
