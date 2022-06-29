<%@ Page Title="RegisterMovie" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterMovie.aspx.cs" Inherits="MovieCollection.RegisterMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center">
		<h3>Register New Movie</h3>
		<br />



		<table class="nav-justified">
			<tr>
				<td style="width: 191px">&nbsp;</td>
				<td style="width: 430px">Movie Title</td>
				<td style="text-align:left">
					<asp:TextBox ID="movieTitle" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td style="width: 191px">&nbsp;</td>
				<td style="width: 430px">Year</td>
				<td style="text-align:left">
					<asp:TextBox ID="movieYear" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td style="width: 191px">&nbsp;</td>
				<td style="width: 430px">Director</td>
				<td style="text-align:left">
					<asp:TextBox ID="movieDirector" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td style="width: 191px">&nbsp;</td>
				<td style="width: 430px">Score</td>
				<td style="text-align:left">
					<asp:DropDownList ID="movieScore" runat="server">
						<asp:ListItem>1</asp:ListItem>
						<asp:ListItem>2</asp:ListItem>
						<asp:ListItem>3</asp:ListItem>
						<asp:ListItem>4</asp:ListItem>
						<asp:ListItem>5</asp:ListItem>
						<asp:ListItem>6</asp:ListItem>
						<asp:ListItem>7</asp:ListItem>
						<asp:ListItem>8</asp:ListItem>
						<asp:ListItem>9</asp:ListItem>
						<asp:ListItem>9</asp:ListItem>
						<asp:ListItem>10</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td style="width: 191px">&nbsp;</td>
				<td style="width: 430px">&nbsp;</td>
				<td style="text-align:left">
					<asp:Button ID="createMovie" runat="server" Text="Register Movie" OnClick="ButtonCreateMovie_Click" />
			        <asp:Button ID="Button1" runat="server" OnClick="UpdateBtn_Click" Text="Update" />
			        <asp:Button ID="Button2" runat="server" OnClick="DeleteBtn_Click" Text="Delete" />
			</tr>
		</table>



</div>
</asp:Content>
