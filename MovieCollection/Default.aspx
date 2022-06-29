<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieCollection._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<div class="jumbotron">
        <h1>Movie Collection</h1>
        <p class="lead">Create and share your own list of movies you have watched so far.</p>
        <p><a runat="server" href="~/RegisterMovie" class="btn btn-primary btn-lg">Add movie &raquo;</a></p>
    </div>

    <div>
        <h3>Your list so far...</h3>
    </div>

    <a runat="server" href="~/RegisterMovie" class="btn btn-primary btn-lg">
    <asp:GridView ID="GridView1" runat="server" Height="98px" Width="621px">
    </asp:GridView>
    </a>

    

</asp:Content>
