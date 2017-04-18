<%@ Page Title="Stats" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stats.aspx.cs" Inherits="mdc_daycamp.Staff.Reports.Stats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">


        <!-- Default panel contents -->
        <section class="blueHeading">
            <h2>Stats</h2>
            <!-- removed the download and email btns because they aren't a feature that what have working at the time -->
        </section>

        <h4 class="margin-15 border-bottom-item stats-item camper-item">Number of camper profiles: 
               
            <asp:Label ID="totalCamper" runat="server" Text=""></asp:Label>
        </h4>

        <div class="camper-item">
            <h4 class="stats-item ">Average Attendance Between</h4>

            <asp:TextBox ID="datebox1" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
            <span style="padding-left: 5px; padding-right: 5px; font-size: 20px;">& </span>
            <asp:TextBox ID="datebox2" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>

            <asp:Button ID="Calculate1" runat="server" CssClass="btn btn-primary" Text="Calculate" OnClick="Calculate1_Click" />
            <h5 class="stats-item">AVERAGE CAMPERS:
                <asp:Label ID="result1" runat="server" Text=""></asp:Label></h5>

        </div>

        <div class="camper-item">
            <h4 class="stats-item">Total Number of Campers Between</h4>

            <asp:TextBox ID="datebox3" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>
            <span class="separator">& </span>
            <asp:TextBox ID="datebox4" ClientIDMode="Static" CssClass="table-item" placeholder="Select a Date" runat="server"></asp:TextBox>

            <asp:Button ID="Calculate2" runat="server" Text="Calculate" CssClass="btn btn-primary" OnClick="Calculate2_Click" />
            <h5 class="stats-item">TOTAL CAMPERS:
                <asp:Label ID="result2" runat="server" Text=""></asp:Label></h5>

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
