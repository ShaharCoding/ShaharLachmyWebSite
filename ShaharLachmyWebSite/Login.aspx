<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    
<form runat="server" method="post" action="Login.aspx">
    <label for="userName">Username:</label><br>
    <input type="text" id="userName" name="userName"><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password">
    <input type="submit" value="Submit">
</form>
<div runat="server" id="LoginResult"></div>
    <br><br>
<form method="get" action="Registration.aspx">		
    <input type="submit" value="For Registration"/>
</form>

</asp:Content>

<asp:Content ID="ContentFooter6" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="Server">
    <div class="footer-tip">
        <strong>Guitar Tip #6:</strong> Keep your fingertips clean and dry. Wipe down your guitar strings with a clean cloth after playing to make them last much longer.
    </div>
</asp:Content>

