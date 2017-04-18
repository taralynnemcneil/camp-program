<%@ Page Title="Login" Language="C#" MasterPageFile="~/NoLogout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mdc_daycamp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                <a href="Default.aspx" class="active" id="parent-form-link">Parent</a>
                            </div>
                            <!-- end div.col-xs-6 -->
                            <div class="col-xs-6">
                                <a href="StaffLogin.aspx" id="staff-form-link">Staff</a>
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


                                <!-- ========== Parent Sign In Form ========== -->

                                <section id="parent-form" style="display: block;">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="firstName" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="firstName" name="firstName" runat="server" TabIndex="1" class="form-control" placeholder="First Name" required="true"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validation" runat="server" Display="Dynamic" ControlToValidate="lastName" ErrorMessage="Please enter your last name"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="lastName" name="lastName" runat="server" TabIndex="2" class="form-control" placeholder="Last Name" required="true"></asp:TextBox>
                                    </div>
                                    <!-- end div.form-group -->

                                    <!-- Parent Login Button -->
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <asp:Button ID="parentSubmit" runat="server" Text="Log In as Parent" TabIndex="4" class="form-control btn btn-parent" OnClick="parentSubmit_Click" />
                                            </div>
                                            <!-- end div.col-sm-6 col-sm-offset-3 -->
                                        </div>
                                        <!-- end div.row -->
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <asp:Label ID="lblError" runat="server" CssClass="label label-danger" />
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
