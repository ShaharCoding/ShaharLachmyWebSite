using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Backstage : System.Web.UI.Page
{
    // חשוב: החלף את המחרוזת הזו במחרוזת ההתחברות האמיתית למסד הנתונים שלך (ConnectionString)
    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\StudentH\source\repos\ShaharCoding\ShaharLachmyWebSite\ShaharLachmyWebSite\App_Data\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["isLoggedIn"])
        {
            Response.Redirect("Unauthorized.aspx");
        }

        if (!IsPostBack)
        {
            LoadQuestions();
        }
    }

    // פונקציה לשליפת השאלות ממסד הנתונים והצגתן במסך
    private void LoadQuestions()
    {
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            // שולפים את השאלות ומסדרים מהחדש לישן
            string query = "SELECT UserName, QuestionText, AnswerText FROM QA_Table ORDER BY DateAsked DESC";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);
            rptQA.DataSource = dt;
            rptQA.DataBind();
        }
    }

    // הפעולה שקורית כשלוחצים על כפתור השליחה
    protected void btnAsk_Click(object sender, EventArgs e)
    {
        string question = txtQuestion.Text.Trim();

        // אם יש לך מערכת התחברות (Login), תחליף את המילה "Guest" בשליפה של שם המשתמש מה-Session
        // לדוגמה: string userName = Session["UserName"].ToString();
        string userName = Session["userName"] != null ? Session["userName"].ToString() : "Guest";

        if (question != "")
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO QA_Table (UserName, QuestionText) VALUES (@UserName, @QuestionText)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@QuestionText", question);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // איפוס תיבת הטקסט, הצגת הודעת הצלחה ורענון רשימת השאלות
            txtQuestion.Text = "";
            lblMessage.Text = "Your question has been successfully sent!";
            LoadQuestions();
        }
    }
}