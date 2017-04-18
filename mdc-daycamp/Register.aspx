<%@ Page Title="Register Staff" Language="C#" MasterPageFile="~/NoLogout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="mdc_daycamp.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="container">
        <section class="row">
            <section class="col-md-6 col-md-offset-3">
                <div class="panel panel-parent">

                    <!-- ===================================
								Sign In Buttons
					    ==================================== -->

                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="#" class="active" id="parent-form-link">Register Staff</a>
                            </div>
                            <!-- end div.col-xs-6 -->

                            <div class="col-xs-6">
                                <a href="Default.aspx">Return Home</a>
                            </div>
                            <!-- end div.col-xs-6 -->
                        </div>
                        <!-- end div.row -->
                        <hr />
                    </div>
                    <!-- end div.panel-heading -->

                    <!-- ===================================
								Register Forms
					    ==================================== -->

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <!-- ========== Registration Form ========== -->

                                <section id="register-form" style="display: block;">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="registerUsername" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="registerUsername" TabIndex="2" ToolTip="Enter a username" class="form-control" required="true" placeholder="Username" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="registerEmail" ErrorMessage="Email is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="registerEmail" TextMode="Email" ToolTip="Enter your email address" TabIndex="2" class="form-control" required="true" placeholder="Email" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="registerPassword" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="registerPassword" TextMode="Password" ToolTip="Enter a password longer than 6 characters" TabIndex="2" class="form-control" required="true" placeholder="Password" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <div class="form-group">
                                        <asp:CompareValidator ID="CompareValidator1" CssClass="validation" ControlToValidate="registerPassword" Display="Dynamic" ControlToCompare="registerPasswordConfirm" Operator="Equal" runat="server" ErrorMessage="Passwords must match."></asp:CompareValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="registerPasswordConfirm" ErrorMessage="Confirmation of password is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="registerPasswordConfirm" TextMode="Password" ToolTip="Confirm your password" TabIndex="2" class="form-control" required="true" placeholder="Confirm Password" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <!-- Register Button -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Button ID="btnRegister" runat="server" Text="Register Staff" TabIndex="4" class="form-control btn btn-parent" OnClick="btnRegister_Click" />
                                            </div>
                                            <!-- end div.col-sm-6 col-sm-offset-3 -->
                                        </div>
                                        <!-- end div.row -->

                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Label ID="registrationPending" runat="server" CssClass="pending" />
                                            </div>
                                            <!-- end div.col-sm-6 col-sm-offset-3 -->
                                        </div>
                                        <!-- end div.row -->

                                    </div>
                                    <!-- end div.form-group -->
                                </section>

                            </div>
                            <!-- end div.col-lg-12 -->
                        </div>
                        <!-- end div.row -->
                    </div>
                    <!-- end div.panel-body -->
                </div>
                <!-- end div.panel panel-parent -->
            </section>
            <!-- end section.col-md-6 col-md-offset-3 -->
        </section>
        <!-- end section.row -->
    </main>

</asp:Content>
