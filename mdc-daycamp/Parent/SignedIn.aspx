<%@ Page Title="Sign Out" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignedIn.aspx.cs" Inherits="mdc_daycamp.Parent.SignedIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">


    <div class="col-md-12 content">
	    <div class="row">
	        <div class="col-md-6 col-sm-12 col-xs-12"><span class="lblstrong pull-left">Camper Attendance</span></div>
	        <div class="col-md-6 col-sm-12 col-xs-12">
                <span class="lblstrong pull-right">  
                    <asp:Label ID="currentDate" runat="server"></asp:Label> |
                    <asp:Label ID="currentDate2" runat="server"></asp:Label>
	  	        </span>
	        </div>
	    </div>
        <br />
       

        <!-- Default panel contents -->
        <table class="col-md-12 table-header">
            <tr>
                <th class="col-md-4 table-item">Sign Out</th>
            </tr>
        </table>

        <div class="col-md-offset-3 padd-20 col-md-6">
            
                <div class="form-group">

                    <div class="col-md-6">
                        <asp:Label for="signedOutBy" runat="server" Text="Please Enter Your Name:"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="signedOutBy" CssClass="form-control" runat="server" />
                   </div>
                <div class="text-center">
                    <asp:Button ID="signout" runat="server" class="btn btn-primary" Text="Sign Out" OnClick="signout_Click" />
                </div>
              </div>
            
        </div>

    </div>
</div>

</asp:Content>
