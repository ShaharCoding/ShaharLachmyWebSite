<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <form runat="server" action="Registration.aspx" method="post">		

	<label for="firstName">First name:</label><br>
	<input runat="server" type="text" id="firstName" name="firstName"/><br/>
	
	<label for="lastName">Last name:</label><br>
	<input runat="server" type="text" id ="lastName" name="lastName"/><br/>
	
	<label for="userName">Username:</label><br>
	<input runat="server" type="text" id="userName" name="userName"/><br/>
	
	<label for="pswd">Password:</label><br>
	<input runat="server" type="Password" id="pswd" name="pswd"/><br/>

	<label for="pswdValidate">Password validation:</label><br>
	<input runat="server" type="Password" id="pswdValidate" name="pswdValidate"/><br/> 
	
	<label for="idNum">ID:</label><br>
	<input runat="server" type="text" id ="idNum" name="idNum"/><br/>

	<label for="phone">Phone number:</label><br>
	<input runat="server" type="text" id="phone" name="phone"/><br/>

	<label for="mail">Email:</label><br>
	<input runat="server" type="text" id="mail" name="mail"/><br/>
	
	<label for="gender">Gender:</label><br>
	<input type="radio" id="genderFemale" name="gender" value="female" checked/>Female<br/>
	<input type="radio" id="genderMale" name="gender" value="Male"/>Male<br/>
	<input type="radio" id="genderOther" name="gender" value="other"/>Other<br/>
	
	<label for="approval">I agree to the site rules:</label><br>
	<input runat="server" type="checkbox" id = "approval" name = "approval" value="approve"/>מאשר\ת<br/>

	<input type="submit">	
</form>

<div runat="server" id="RegistrationResult"></div>



</asp:Content>
<asp:Content ID="ContentFooter1" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="Server">
    <div class="footer-tip">
        <strong>Guitar Tip:</strong> Always tune your guitar before you start playing. A guitar that is even slightly out of tune won't sound right!
    </div>
</asp:Content>

