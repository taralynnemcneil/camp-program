<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pay.aspx.cs" Inherits="mdc_daycamp.Staff.Payments.Pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="container">

        <div class="col-md-12 content">


            <section class="tableTitle">
                <h2>
                    <asp:Label ID="familyName" runat="server" Text=""></asp:Label></h2>
            </section>


            <!-- Table -->
            <div class="table-responsive">
                <table class="table table-striped">

                    <tr>
                        <th class="col-md-4 table-item table-header">CAMPER</th>
                        <th class="col-md-4 table-item table-header">RATE($)</th>
                        <th class="col-md-4 table-item table-header">DAYS OF ATTENDENCE</th>
                    </tr>
                    <tr>
                        <td class="col-md-4">
                            <asp:Label runat="server" ID="firstName" Text=""></asp:Label></td>
                        <td class="col-md-4">
                            <asp:Label runat="server" ID="rate" Text=""></asp:Label></td>
                        <td class="col-md-4">12</td>
                    </tr>

                </table>
            </div>

            <hr />

            <!-- Section 2 - Payments Tale -->
            <section class="tableTitle">
                <h2>Payment Record</h2>
            </section>
            <div class="table-responsive">
                <asp:GridView ID="grdPayment" runat="server" CssClass="table scroll table-striped" AutoGenerateColumns="false" DataKeyNames="ID">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                        <asp:BoundField DataField="date" HeaderText="DATE" HeaderStyle-CssClass="table-header" />
                        <asp:BoundField DataField="amount" HeaderText="AMOUNT" HeaderStyle-CssClass="table-header" />
                        <asp:BoundField DataField="payment_type" HeaderText="PAYMENT TYPE" HeaderStyle-CssClass="table-header" />
                    </Columns>
                </asp:GridView>
            </div>
            <!-- SECTION 2 ENDS -->
            <!-- Section 3 Money Owes Start -->

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="input-group">

                        <label class="form-control" aria-describedby="basic-addon2">Amount Owing to Date:</label>
                        <span class="input-group-addon" id="basic-addon2">$220.00</span>
                    </div>
                </div>
            </div>

            <!-- Section 3 Money Owes End -->
            <!-- Section 3 Enter Payment Start -->

            <section class="tableTitle" style="margin-top: 30px;">
                <h2>Enter a Payment</h2>
            </section>

            <div class="table-responsive">
                <table id="paymentTable" class="table table-striped table-ignore-strips">

                    <tr>
                        <th class="col-md-4 table-item table-header">DATE</th>
                        <th class="col-md-4 table-item table-header">AMOUNT TO PAY</th>
                        <th class="col-md-4 table-item table-header">PAYMENT TYPE</th>
                    </tr>

                    <tr class="col-md-12 pay-section">
                        <td>
                            <asp:TextBox TextMode="Date" ID="payCalendar" CssClass="table-item" runat="server"></asp:TextBox>
                        </td>
                        <td class="col-md-4 right-border-blue height-100 table-item">
                            <asp:TextBox ID="makePayment" CssClass="table-item" placeholder="$00.00" runat="server"></asp:TextBox>
                        </td>

                        <td class="list-group col-md-4">

                            <asp:DropDownList ID="payType" CssClass="btn-banner table-item row-highlight" runat="server">
                                <asp:ListItem Text="Credit Card" runat="server" Value="Credit"></asp:ListItem>
                                <asp:ListItem Text="Debit Card" runat="server" Value="Debit"></asp:ListItem>
                                <asp:ListItem Text="Cash" runat="server" Value="Cash"></asp:ListItem>
                                <asp:ListItem Text="Cheque" runat="server" Value="Cheque"></asp:ListItem>
                            </asp:DropDownList>

                        </td>

                    </tr>

                    <tr>
                        <td class="input-name">
                            <asp:Button ID="submitPayment" runat="server" CssClass="btn btn-primary btn-block col-md-6" Text="Save & Submit" OnClick="submitPayment_Click" />
                            <asp:Label ID="lblPayment" runat="server" CssClass="col-md-6"></asp:Label>
                        </td>
                    </tr>

                </table>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="paymentTable">
                        <a href="Index.aspx" runat="server" class="btn btn-primary pull-left">Back to Payments List</a>
                        <a href="../StaffDashboard.aspx" runat="server" class="btn btn-primary pull-right">Back to Staff Home</a>
                    </div>
                </div>
            </div>

            <!-- Section 3 Enter Payment End -->

        </div>
    </main>

</asp:Content>
