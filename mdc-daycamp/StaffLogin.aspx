<%@ Page Title="Login" Language="C#" MasterPageFile="~/NoLogout.Master" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="mdc_daycamp.StaffLogin" %>

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
                                <a href="Default.aspx" id="parent-form-link">Parent</a>
                            </div>
                            <!-- end div.col-xs-6 -->
                            <div class="col-xs-6">
                                <a href="StaffLogin.aspx" class="active" id="staff-form-link">Staff</a>
                            </div>
                            <!-- end div.col-xs-6 -->
                        </div>
                        <!-- end div.row -->
                        <hr />
                    </div>
                    <!-- end div.panel-heading -->

                    <!-- ===================================
								Sign In Forms
					==================================== -->

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <!-- ========== Staff Sign In Form ========== -->

                                <section id="staff-form">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="username" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="userName" TabIndex="2" class="form-control" required="true" placeholder="Username" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="password" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="password" TextMode="Password" TabIndex="2" class="form-control" required="true" placeholder="Password" runat="server"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <!-- Staff Login Button -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Button ID="staffSubmit" runat="server" Text="Log In as Staff" TabIndex="4" class="form-control btn btn-parent" OnClick="staffSubmit_Click" />
                                            </div>
                                            <!-- end div.col-sm-6 col-sm-offset-3 -->
                                        </div>
                                        <!-- end div.row -->
                                    </div>
                                    <!-- end div.form-group -->

                                    <!-- Staff Register and Forgot Password Links -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    Need an account? <a href="Register.aspx" id="register-form-link" tabindex="5">Register Staff</a>
                                                </div>
                                                <!-- end div.text-center -->
                                            </div>
                                            <!-- end div.col-lg-12 -->
                                        </div>
                                        <!-- end div.row -->

                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Label ID="lblMessage" runat="server" CssClass="message" />
                                            </div>
                                            <!-- end div.col-sm-6 col-sm-offset-3 -->
                                        </div>

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
