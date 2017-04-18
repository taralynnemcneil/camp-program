<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="mdc_daycamp.Parent.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <div class="col-md-12 content">
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12"><span class="lblstrong pull-left">Camper Attendance</span></div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <span class="lblstrong pull-right">
                        <asp:Label ID="currentDate" runat="server"></asp:Label>
                        |
               
                        <asp:Label ID="currentDate2" runat="server"></asp:Label>
                    </span>
                </div>
            </div>
            <br />


            <!-- Default panel contents -->
            <table class="col-md-12 table-header">
                <th class="col-md-4 table-item">Sign In</th>
            </table>

            <div class="col-md-offset-3 padd-20 col-md-6">

                <div class="form-group">

                    <div class="col-md-6">
                        <asp:Label for="signedInBy" runat="server" Text="Please Enter Your Name:"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="signedInBy" CssClass="form-control" runat="server" />
                    </div>
                    <div class="text-center">
                        <asp:Button ID="signin" runat="server" class="btn btn-primary" Text="Sign In" OnClick="signin_Click" />
                    </div>
                </div>

            </div>

        </div>
    </main>

</asp:Content>
