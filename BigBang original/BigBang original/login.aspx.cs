using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dapper;
using System.Data;
using System.Data.SqlClient;

namespace BigBang_original
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MARSGT;Initial Catalog=Quara;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnKayıt_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (baglanti.State == ConnectionState.Closed)
                baglanti.Open();
            SqlCommand cmd = new SqlCommand("select* from members where username ='" + textkAd.Text + "' and pass= '" + textsifre.Text + "'", baglanti);
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read())
            {
                Session.Add("membername", textkAd.Text);
                Response.Redirect("default.aspx");
            }
            else
            {

            }
            dr.Close();
            baglanti.Close();
        }

        protected void textkAd_TextChanged(object sender, EventArgs e)
        {

        }
    }
}