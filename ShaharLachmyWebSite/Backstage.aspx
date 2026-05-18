<%@ Page Title="Backstage Q&A" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Backstage.aspx.cs" Inherits="Backstage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .qa-item { border: 1px solid #ccc; padding: 15px; margin-bottom: 15px; border-radius: 8px; background-color: #f9f9f9; }
        .qa-question { font-weight: bold; color: #333; }
        .qa-answer { color: #d32f2f; margin-top: 10px; }
        .ask-box { margin-top: 30px; padding: 20px; background-color: #eef; border-radius: 8px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <h1 style="text-align: center;">🎸 Backstage Q&A 🎸</h1>
    <p style="text-align: center;">Ask Shahar anything about guitars, gear, or playing techniques!</p>
    
    <hr class="custom-hr" />

    <asp:Repeater ID="rptQA" runat="server">
        <ItemTemplate>
            <div class="qa-item">
                <div class="qa-question">
                    <%# Eval("UserName") %> asked:<br />
                    <%# Eval("QuestionText") %>
                </div>
                <div class="qa-answer">
                    <strong>Shahar's Answer:</strong><br />
                    <%# Eval("AnswerText") != DBNull.Value && Eval("AnswerText").ToString() != "" ? Eval("AnswerText") : "Waiting for Shahar to answer..." %>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <div class="ask-box">
        <h3>Ask a Question:</h3>
        <form runat="server" method="post" action="Backstage.aspx">
            <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine" Rows="4" Width="100%" placeholder="Type your question here..."></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnAsk" runat="server" Text="Send Question" OnClick="btnAsk_Click" CssClass="quiz-submit-btn" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Font-Bold="true"></asp:Label>
        </form>
    </div>

</asp:Content>