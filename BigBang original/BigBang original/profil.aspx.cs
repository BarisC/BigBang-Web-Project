using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dapper;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace BigBang_original
{
    public partial class profil : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection("Data Source=MARSGT;Initial Catalog=Quara;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelabel.Text = Session["membername"].ToString();
        }

        protected void sorularin_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.soru.aspx");
        }

        protected void yanitların_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.yanıt.aspx");
        }

        protected void takipciler_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.takipci.aspx");
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.follow.aspx");
        }

        protected void btntakip_Click(object sender, EventArgs e)
        {

            string kullaniciid = Session["kullaniciid"].ToString();
            baglanti.Execute(@"INSERT * FROM follow(followers, follow) VALUES(@a, @b)", new { a = usernamelabel.Text , b = kullaniciid });
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