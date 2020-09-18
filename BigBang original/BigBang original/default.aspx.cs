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
    public partial class _default : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MARSGT;Initial Catalog=quara;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string getusername2 = Session["membername"].ToString();
            Session.Add("username2", getusername2);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (baglanti.State == ConnectionState.Closed)
                    baglanti.Open();
                string getusername = Session["membername"].ToString();
                string categorisec = DropDownList1.Text;
                baglanti.Execute(@"INSERT INTO question(qtitle, username, cname, questiontext) VALUES (@a, @b, @c, @d) ", new { a = TextBox1.Text, b = getusername, c = DropDownList1.Text, d = TextBox2.Text });
                baglanti.Close();
            }
            catch(Exception ex)
            {

            }
        }

        protected void yanitlagit(object sender, EventArgs e)
        {
            string qtitle;
            GridViewRow gr = GridView1.SelectedRow;
            qtitle = gr.Cells[0].Text;
            Session.Add("qtitle", qtitle);
            Response.Redirect("answerpage.aspx");

        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            Session.Add("aramatext", txtArama.Text);
            Response.Redirect("search.aspx");
        }
    }
}