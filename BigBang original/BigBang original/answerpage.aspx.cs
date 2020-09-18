using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace BigBang_original
{
    public partial class answerpage : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MARSGT;Initial Catalog=quara;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            gelentitle.Text = Session["qtitle"].ToString();
            gelenusername.Text = Session["username2"].ToString();
        }

     

        protected void yanitlabutton_Click1(object sender, EventArgs e)
        {
            
                if (baglanti.State == ConnectionState.Closed)
                    baglanti.Open();
                string getusername = Session["membername"].ToString();
                baglanti.Execute(@"INSERT INTO answer(username, qtitle, answertext) VALUES(@a, @b, @c)", new { a = gelenusername.Text , b = gelentitle.Text, c = answertext.Text });
                baglanti.Close();
                Response.Redirect("default.aspx");
           
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            Session.Add("aramatext", txtArama.Text);
            Response.Redirect("search.aspx");
        }
    }
}