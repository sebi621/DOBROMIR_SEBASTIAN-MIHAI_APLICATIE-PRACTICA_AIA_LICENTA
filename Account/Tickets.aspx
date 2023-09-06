﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="School_Tickets.Tickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <style type="text/css">
        body {
            background: #eee;
        }

        .main-container {
            margin-top: 40px;
        }

        .widget-author {
            margin-bottom: 58px;
        }

        .author-card {
            position: relative;
            padding-bottom: 48px;
            background-color: #fff;
            box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
        }

            .author-card .author-card-cover {
                position: relative;
                width: 100%;
                height: 100px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }

                .author-card .author-card-cover::after {
                    display: block;
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    content: '';
                    opacity: 0.5;
                }

                .author-card .author-card-cover > .btn {
                    position: absolute;
                    top: 12px;
                    right: 12px;
                    padding: 0 10px;
                }

            .author-card .author-card-profile {
                display: table;
                position: relative;
                margin-top: -22px;
                padding-right: 15px;
                padding-bottom: 16px;
                padding-left: 20px;
                z-index: 5;
            }

                .author-card .author-card-profile .author-card-avatar, .author-card .author-card-profile .author-card-details {
                    display: table-cell;
                    vertical-align: middle;
                }

                .author-card .author-card-profile .author-card-avatar {
                    width: 85px;
                    border-radius: 50%;
                    box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
                    overflow: hidden;
                }

                    .author-card .author-card-profile .author-card-avatar > img {
                        display: block;
                        width: 100%;
                    }

                .author-card .author-card-profile .author-card-details {
                    padding-top: 20px;
                    padding-left: 15px;
                }

                .author-card .author-card-profile .author-card-name {
                    margin-bottom: 2px;
                    font-size: 14px;
                    font-weight: bold;
                }

                .author-card .author-card-profile .author-card-position {
                    display: block;
                    color: #8c8c8c;
                    font-size: 12px;
                    font-weight: 600;
                }

            .author-card .author-card-info {
                margin-bottom: 0;
                padding: 0 25px;
                font-size: 13px;
            }

            .author-card .author-card-social-bar-wrap {
                position: absolute;
                bottom: -18px;
                left: 0;
                width: 100%;
            }

                .author-card .author-card-social-bar-wrap .author-card-social-bar {
                    display: table;
                    margin: auto;
                    background-color: #fff;
                    box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .11);
                }

        .btn-style-1.btn-white {
            background-color: #fff;
        }

        .list-group-item i {
            display: inline-block;
            margin-top: -1px;
            margin-right: 8px;
            font-size: 1.2em;
            vertical-align: middle;
        }

        .mr-1, .mx-1 {
            margin-right: .25rem !important;
        }

        .list-group-item.active:not(.disabled) {
            border-color: #e7e7e7;
            background: #fff;
            color: #ac32e4;
            cursor: default;
            pointer-events: none;
        }

        .list-group-flush:last-child .list-group-item:last-child {
            border-bottom: 0;
        }

        .list-group-flush .list-group-item {
            border-right: 0 !important;
            border-left: 0 !important;
        }

        .list-group-flush .list-group-item {
            border-right: 0;
            border-left: 0;
            border-radius: 0;
        }

        .list-group-item.active {
            z-index: 2;
            color: #fff;
            background-color: #007bff;
            border-color: #007bff;
        }

        .list-group-item:last-child {
            margin-bottom: 0;
            border-bottom-right-radius: .25rem;
            border-bottom-left-radius: .25rem;
        }

        a.list-group-item, .list-group-item-action {
            color: #404040;
            font-weight: 600;
        }

        .list-group-item {
            padding-top: 16px;
            padding-bottom: 16px;
            -webkit-transition: all .3s;
            transition: all .3s;
            border: 1px solid #e7e7e7 !important;
            border-radius: 0 !important;
            color: #404040;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .08em;
            text-transform: uppercase;
            text-decoration: none;
        }

        .list-group-item {
            position: relative;
            display: block;
            padding: .75rem 1.25rem;
            margin-bottom: -1px;
            background-color: #fff;
            border: 1px solid rgba(0,0,0,0.125);
        }
    </style>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mb-4 main-container">
        <div class="row">
            <div class="col-lg-4 pb-5">

                <div class="author-card pb-3">
                    <div class="author-card-cover" style="background-image: url(https://bootdey.com/img/Content/flores-amarillas-wallpaper.jpeg);"></div>
                    <div class="author-card-profile">
                        <div class="author-card-avatar">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="<%= getName() %>">
                        </div>
                        <div class="author-card-details">
                            <h5 class="author-card-name text-lg"><%= getName() %></h5>
                        </div>
                    </div>
                </div>
                <div class="wizard">
                    <nav class="list-group list-group-flush">
                        <a class="list-group-item active" href="#"></a><a class="list-group-item" runat="server" href="~/Account/Manage"><i class="fa fa-user text-muted"></i>Setari profil</a>

                        <a class="list-group-item" href="#">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <i class="fa fa-tag mr-1 text-muted"></i>
                                    <div class="d-inline-block font-weight-medium text-uppercase">Tichetele mele</div>
                                </div>
                            </div>
                        </a>
                        <a class="list-group-item" runat="server" href="~/Account/CreateThicket">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <i class="fa fa-tag mr-1 text-muted"></i>
                                    <div class="d-inline-block font-weight-medium text-uppercase">Creeaza thicket</div>
                                </div>
                            </div>
                        </a>
                    </nav>
                </div>
            </div>

            <div class="col-lg-8 pb-5">
                <div class="d-flex justify-content-end pb-3">
                    <div class="form-inline">
                        <label class="text-muted mr-3" for="order-sort">Sort Orders</label>
                        <select class="form-control" id="order-sort">
                            <option>Toate</option>
                            <option>Delivered</option>
                            <option>In Progress</option>
                            <option>Delayed</option>
                            <option>Canceled</option>
                        </select>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>ID#</th>
                                <th>Data creeare</th>
                                <th>Status</th>

                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptThick" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><a class="navi-link" href="#" data-toggle="modal"><%#  Eval("ThicketID") %></a></td>
                                        <td><%#  Eval("CreatedDate") %></td>
                                        <td><span class="badge badge-danger m-0"><%# Eval("Status") %></span></td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
