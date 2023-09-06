<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateThicket.aspx.cs" Inherits="School_Tickets.Account.CreateThicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <link rel="stylesheet" href="/cssContact/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                </div>
            </div>
            <div class="row justify-content-center" align="center">
                <div class="col-md-12" align="center">
                    <div class="wrapper">
                        <div class="row no-gutters mb-5">
                            <div class="col-md-7">
                                <div class="contact-wrap w-100 p-md-5 p-4">

                                    <div id="form-message-warning" class="mb-4"></div>
                                    <div id="form-message-success" class="mb-4">
                                        <asp:Literal runat="server" ID="FailureText" />
                                    </div>

                                    <div class="row">

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="label" for="#">Creeaza tichetul tau</label>
                                                <textarea runat="server" name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Mesaj"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">

                                                <asp:Button runat="server" OnClick="SendMessage_Click" Text="Creeaza thicket" CssClass="btn btn-primary" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>
</asp:Content>
