<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fender.aspx.cs" Inherits="FirstPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div>
        <h1>Fender Guitar models</h1>
    </div>
    <div>
        <h2>The Stratocaster</h2>
       <a href="strat.aspx"> <img src="Images/Strat.png" width="200"/>
    </a>
           </div>
    <div>
        <h2>The Telecaster</h2>
            <img src="Images/Tele.png" width="300"/>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

