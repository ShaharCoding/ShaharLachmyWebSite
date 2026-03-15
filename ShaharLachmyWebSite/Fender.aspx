<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fender.aspx.cs" Inherits="FirstPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div>
        <h1 style="text-align: center">Fender Guitar models</h1>
    </div>
    <div class="GuitarRow">
        <div class="GuitarType">
             <h2>The Stratocaster</h2>
             <a href="strat.aspx"> <img src="Images/Strat.png" width="430"/>
             </a>
        </div>
    
         <div class="GuitarType">
             <h2>The Telecaster</h2>
               <a href="tele.aspx"> <img src="Images/Tele.png" width="460"/> </a>
        </div>

         <div class="GuitarType">
            <h2>The Jazzmaster</h2>
             <a href="jazz.aspx">  <img src="Images/Jazzmaster.png" width="300"/> </a>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

