<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <h1 style="text-align: center">How to Choose Your First Electric Guitar?</h1>
    <p>Choosing your first electric guitar can feel confusing - so many shapes, sounds, and features, and it’s hard to know what really matters when you’re just starting out. 
       This website is designed to make that process simple. 
       Here, you’ll find clear explanations of the different guitar types, what makes each model unique, and which styles they fit best.
       Whether you’re into rock, blues, metal, or just exploring, we’ll help you understand what to look for so you can pick a guitar that feels comfortable, sounds great, and inspires you to play. 
       Your first guitar is the start of your musical journey - and this site is here to guide you every step of the way.</p>
    
    <hr class="custom-hr" />

    <div class="quiz-container">
        <form runat="server" method="post" action="Default.aspx">
        <h2>🎸 Find Your Perfect Match Quiz 🎸</h2>
        <p class="quiz-intro">Answer the 6 questions below to find out which iconic electric guitar fits your style!</p>
        
        <div class="quiz-question">
            <p><strong>1. What is your favorite music genre?</strong></p>
            <asp:RadioButtonList ID="Q1" runat="server">
                <asp:ListItem Value="rock_blues">Rock & Blues</asp:ListItem>
                <asp:ListItem Value="metal_hardrock">Metal & Hard Rock</asp:ListItem>
                <asp:ListItem Value="indie_alt">Indie & Alternative</asp:ListItem>
                <asp:ListItem Value="pop_funk">Pop, Funk & Country</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-question">
            <p><strong>2. What kind of sound are you looking for?</strong></p>
            <asp:RadioButtonList ID="Q2" runat="server">
                <asp:ListItem Value="warm_heavy">Warm, thick, and heavy</asp:ListItem>
                <asp:ListItem Value="bright_clean">Bright, sharp, and clean</asp:ListItem>
                <asp:ListItem Value="modern_versatile">Modern, balanced, and versatile</asp:ListItem>
                <asp:ListItem Value="atm_deep">Atmospheric, deep, and unique</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-question">
            <p><strong>3. Which guitar hero inspires you the most?</strong></p>
            <asp:RadioButtonList ID="Q3" runat="server">
                <asp:ListItem Value="hendrix_frusciante">Jimi Hendrix / John Frusciante</asp:ListItem>
                <asp:ListItem Value="page_slash">Jimmy Page / Slash</asp:ListItem>
                <asp:ListItem Value="angus_young">Angus Young (AC/DC)</asp:ListItem>
                <asp:ListItem Value="cobain_indie">Kurt Cobain / Indie Icons</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-question">
            <p><strong>4. What is your preference for guitar body and weight?</strong></p>
            <asp:RadioButtonList ID="Q4" runat="server">
                <asp:ListItem Value="heavy_classic">Heavy body, classic solid rock feel</asp:ListItem>
                <asp:ListItem Value="light_easy">Lightweight and easy to reach high frets</asp:ListItem>
                <asp:ListItem Value="simple_tough">Simple, tough, and indestructible</asp:ListItem>
                <asp:ListItem Value="offset_artistic">Offset, artistic, and completely different</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-question">
            <p><strong>5. Bridge Type & Tuning Stability:</strong></p>
            <asp:RadioButtonList ID="Q5" runat="server">
                <asp:ListItem Value="simple_stable">Simple and stable - I want to tune it and forget it</asp:ListItem>
                <asp:ListItem Value="whammy_bar">Versatile with a whammy bar for cool pitch bends</asp:ListItem>
                <asp:ListItem Value="modern_tremolo">Modern, smooth tremolo with great tuning stability</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-question">
            <p><strong>6. Aesthetic & Vibe:</strong></p>
            <asp:RadioButtonList ID="Q6" runat="server">
                <asp:ListItem Value="vintage_elegant">Vintage, elegant, and prestigious</asp:ListItem>
                <asp:ListItem Value="timeless_classic">The ultimate, timeless rock 'n' roll classic</asp:ListItem>
                <asp:ListItem Value="raw_no_nonsense">Raw, stripped-down, and no-nonsense</asp:ListItem>
                <asp:ListItem Value="indie_hipster">Indie, hipster, and unconventional</asp:ListItem>
                <asp:ListItem Value="other">Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="quiz-submit-container">
            <asp:Button ID="btnSubmit" runat="server" Text="Find My Guitar!" OnClick="btnSubmit_Click" CssClass="quiz-submit-btn" />
        </div>
    </form>
    </div>

    <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="quiz-result-panel">
        <h2>Your Perfect Match is: <asp:Label ID="lblGuitarResult" runat="server" Text=""></asp:Label>!</h2>
        <p><asp:Label ID="lblGuitarDescription" runat="server" Text=""></asp:Label></p>
        <asp:HyperLink ID="lnkGuitarPage" runat="server" CssClass="quiz-result-link">Click here to learn more about this guitar!</asp:HyperLink>
    </asp:Panel>

    <hr class="custom-hr" />

    <div class="about-section">
        <a href="https://youtu.be/cJunCsrhJjg?si=LrpFzBxK2UNCxGln" target="_blank">
            <img width="250" src="Images/Jimi.jpg" alt="Jimi Hendrix">
        </a>
        <p>Click on the photo for an inspiring video</p>
        <p>“When the power of love overcomes the love of power, the world will know peace.” - Jimi Hendrix</p>
    </div>
    
    <div class="about-section">
        <img width="200" src="Images/Me.jpg" alt="Shahar Lachmy">
        <p>I'm Shahar Lachmy and I run this website</p>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderFooter" Runat="Server">
    <div class="footer-tip">
        <strong>Guitar Tip:</strong> Always tune your guitar before you start playing. A guitar that is even slightly out of tune won't sound right!
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

