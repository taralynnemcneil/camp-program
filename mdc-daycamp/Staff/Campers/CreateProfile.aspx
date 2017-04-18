<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProfile.aspx.cs" Inherits="mdc_daycamp.Staff.Campers.CreateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <!-- Default panel contents -->
        <!--Table Form-->

        <table class="col-md-12 table">

            <tr>
                <td class="col-md-4 table-header table-item input-name">FIRST NAME</td>
                <td class="col-md-4 table-header table-item input-name">LAST NAME</td>
                <td rowspan="5" class="col-md-3">
                    <div class="profile-photo-icon">
                        <img src="../../Images/create-profile-icon.svg" height="200" width="200" />
                    </div>
                </td>
            </tr>

            <tr>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="First Name Here" name="firstName" ID="firstName" class="table-item"></asp:TextBox>
                </td>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="Last Name Here" name="lastName" ID="lastName" class="table-item"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="table-header table-item input-name">RATE ($)</td>
                <td class="table-header table-item input-name">ADDRESS</td>
            </tr>

            <tr>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="00.00" name="rate" ID="rate" class="table-item"></asp:TextBox>
                </td>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="Main Address Here" name="address" ID="address" class="table-item"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="table-header table-item input-name">FAMILY NAME</td>
                <td class="table-header table-item input-name">AGE</td>
            </tr>

            <tr>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="Enter your family name" name="familyName" ID="familyName" class="table-item"></asp:TextBox>
                </td>
                <td class="input-name">
                    <asp:TextBox runat="server" placeholder="Enter camper's age" name="age" ID="age" class="table-item"></asp:TextBox>
                </td>
            </tr>

            <tr class="table-header col-md-12">
                <td class="table-item emergency">EMERGENCY
                    </td>
                <td class="table-item">CONTACT</td>
            </tr>

            <tr class="col-md-12">
                <td class="input-name table-item emergency">
                    <label>Name:</label>
                </td>
                <td class="table-item">
                    <asp:TextBox runat="server" ID="contactName" placeholder="Contact Name"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="input-name table-item emergency">
                    <label>Relationship:</label>
                </td>
                <td class="table-item">
                    <asp:TextBox runat="server" ID="contactRelation" placeholder="Relation to Camper"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="input-name table-item emergency">
                    <label>Phone:</label>
                </td>
                <td class="table-item">
                    <asp:TextBox type="tel" ID="contactNumber" runat="server" placeholder="123-456-789"></asp:TextBox>
                </td>
            </tr>
        </table>

        <table class="col-md-12 table">

            <tr class="table-header table-item input-name">
                <td>IMPORTANT NOTES</td>
            </tr>

            <tr class="col-md-12">
                <td>
                    <asp:TextBox runat="server" ID="impNotes" placeholder="Write any important notes !" CssClass="table-item"></asp:TextBox>
                </td>
            </tr>

            <hr />

            <tr>
                <td>
                    <asp:LinkButton runat="server" class="btn btn-primary pull-right" OnClick="Create_Click">Save Changes</asp:LinkButton>
                </td>
            </tr>

        </table>

        <hr />

        <div class="row">
            <div class="col-sm-12">
                <div class="paymentTable">
                    <a href="Index.aspx" runat="server" class="btn btn-primary pull-left">Back to List of Profiles</a>
                    <a href="../StaffDashboard.aspx" runat="server" class="btn btn-primary pull-right">Back to Staff Home</a>
                </div>
            </div>
        </div>

    </main>

</asp:Content>
