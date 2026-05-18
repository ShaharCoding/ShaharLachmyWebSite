using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // 1. איפוס מונים לגיטרות
        int strat = 0, lesPaul = 0, tele = 0, jazz = 0, prs = 0, sg = 0;

        // 2. חישוב נקודות - שאלה 1
        if (Q1.SelectedItem != null)
        {
            if (Q1.SelectedValue == "rock_blues") { strat++; tele++; lesPaul++; }
            if (Q1.SelectedValue == "metal_hardrock") { sg++; prs++; lesPaul++; }
            if (Q1.SelectedValue == "indie_alt") { jazz++; }
            if (Q1.SelectedValue == "pop_funk") { strat++; tele++; }
        }

        // חישוב נקודות - שאלה 2
        if (Q2.SelectedItem != null)
        {
            if (Q2.SelectedValue == "warm_heavy") { lesPaul++; sg++; }
            if (Q2.SelectedValue == "bright_clean") { strat++; tele++; }
            if (Q2.SelectedValue == "modern_versatile") { prs++; }
            if (Q2.SelectedValue == "atm_deep") { jazz++; }
        }

        // חישוב נקודות - שאלה 3
        if (Q3.SelectedItem != null)
        {
            if (Q3.SelectedValue == "hendrix_frusciante") { strat++; }
            if (Q3.SelectedValue == "page_slash") { lesPaul++; }
            if (Q3.SelectedValue == "angus_young") { sg++; }
            if (Q3.SelectedValue == "cobain_indie") { jazz++; }
        }

        // חישוב נקודות - שאלה 4
        if (Q4.SelectedItem != null)
        {
            if (Q4.SelectedValue == "heavy_classic") { lesPaul++; }
            if (Q4.SelectedValue == "light_easy") { sg++; strat++; }
            if (Q4.SelectedValue == "simple_tough") { tele++; }
            if (Q4.SelectedValue == "offset_artistic") { jazz++; }
        }

        // חישוב נקודות - שאלה 5
        if (Q5.SelectedItem != null)
        {
            if (Q5.SelectedValue == "simple_stable") { lesPaul++; tele++; sg++; }
            if (Q5.SelectedValue == "whammy_bar") { strat++; jazz++; }
            if (Q5.SelectedValue == "modern_tremolo") { prs++; }
        }

        // חישוב נקודות - שאלה 6
        if (Q6.SelectedItem != null)
        {
            if (Q6.SelectedValue == "vintage_elegant") { lesPaul++; prs++; }
            if (Q6.SelectedValue == "timeless_classic") { strat++; sg++; }
            if (Q6.SelectedValue == "raw_no_nonsense") { tele++; }
            if (Q6.SelectedValue == "indie_hipster") { jazz++; }
        }

        // 3. מציאת הגיטרה המנצחת
        int maxScore = strat;
        string winnerName = "Fender Stratocaster";
        string winnerDesc = "The ultimate classic! Versatile, bright, and perfect for rock, blues, and funk.";
        string winnerUrl = "strat.aspx";

        if (lesPaul > maxScore)
        {
            maxScore = lesPaul;
            winnerName = "Gibson Les Paul";
            winnerDesc = "Thick, warm, and powerful. The king of classic rock and hard rock.";
            winnerUrl = "Les_Paul.aspx";
        }
        if (tele > maxScore)
        {
            maxScore = tele;
            winnerName = "Fender Telecaster";
            winnerDesc = "Simple, tough, and twangy. Amazing for country, indie, and raw rock.";
            winnerUrl = "tele.aspx";
        }
        if (jazz > maxScore)
        {
            maxScore = jazz;
            winnerName = "Fender Jazzmaster";
            winnerDesc = "Offset and unique. The go-to choice for indie, grunge, and alternative players.";
            winnerUrl = "jazz.aspx";
        }
        if (prs > maxScore)
        {
            maxScore = prs;
            winnerName = "PRS Custom";
            winnerDesc = "Elegant and modern. Offers a perfect balance between vintage vibes and modern versatility.";
            winnerUrl = "PRS.aspx";
        }
        if (sg > maxScore)
        {
            maxScore = sg;
            winnerName = "Gibson SG";
            winnerDesc = "Lightweight with a mean bite! The ultimate hard rock and metal machine.";
            winnerUrl = "SG.aspx";
        }

        // 4. הצגת התוצאה במסך
        lblGuitarResult.Text = winnerName;
        lblGuitarDescription.Text = winnerDesc;
        lnkGuitarPage.NavigateUrl = winnerUrl;

        pnlResult.Visible = true;
    }
}