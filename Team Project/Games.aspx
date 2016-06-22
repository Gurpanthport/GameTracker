﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="Team_Project.Games" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                 <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" ID="GamesGridView" AutoGenerateColumns="false">
        <Columns>

            <asp:BoundField DataField="teamA" HeaderText="Team A" Visible="true" /> 
            <asp:BoundField DataField="teamA" HeaderText="Team B" Visible="true" /> 
            <asp:BoundField DataField="teamAScore" HeaderText="Team A Score" Visible="true" /> 
            <asp:BoundField DataField="teamBScore" HeaderText="Team A Score" Visible="true" /> 
        
             <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i>Edit" 
                            NavigateUrl="~/GameDetails.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields="gameID" DataNavigateUrlFormatString="GameDetails.aspx?gameID={0}" />
                        <asp:CommandField  HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
        </Columns>
                </asp:GridView>
            </div>
        </div>
    

    </div>
</asp:Content>
