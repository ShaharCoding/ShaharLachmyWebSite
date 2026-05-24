<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gibson.aspx.cs" Inherits="Gibson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <div>
         <h1 style="text-align: center">Gibson Guitar models</h1>
    </div>
     <div class="GuitarRow">
    <div class="GuitarType">
     <h2>Les Paul</h2>
     <a href="Les_Paul.aspx"> 
         <img id="lesPaulImage" src="Images/Les_Paul.png" width="430"/>
     </a>
</div>
        <div class="GuitarType">
     <h2>SG</h2>
     <a href="SG.aspx"> 
         <img id="sgImage" src="Images/SG.png" width="192"/>
     </a>
</div>
         </div>
</asp:Content>

<asp:Content ID="ContentFooter3" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="Server">
    <div class="footer-tip">
        <strong>Guitar Tip:</strong> Protect your instrument. Keep your guitar in its case or on a proper stand when you're not playing to avoid accidental drops.
    </div>
</asp:Content>

