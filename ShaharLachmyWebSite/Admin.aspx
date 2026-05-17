<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <table class="adminTable" ID="adminTable" runat="server"></table>
</asp:Content>


<asp:Content ID="ContentFooter1" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="Server">
    <div class="footer-tip">
        <strong>Guitar Tip:</strong> Always tune your guitar before you start playing. A guitar that is even slightly out of tune won't sound right!
    </div>
</asp:Content>

