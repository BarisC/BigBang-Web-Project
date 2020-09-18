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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=MARSGT;Initial Catalog=Quara;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayıt2_Click(object sender, EventArgs e)
        {
            try
            {
                if (baglanti.State == ConnectionState.Closed)
                    baglanti.Open();
                if (nametxt.Text != string.Empty)
                {
                    if (surnametxt.Text != string.Empty)
                    {
                        if (usernametxt.Text != string.Empty)
                        {
                            if (passtxt.Text != string.Empty)
                            {
                                baglanti.Execute(@"INSERT INTO members(memberfname, memberlname, email, username, pass) VALUES (@a, @b, @c, @d, @e)", new { a = nametxt.Text, b = surnametxt.Text, c = emailtxt.Text, d = usernametxt.Text, e = passtxt.Text });
                                Session.Add("membername", nametxt.Text);
                                Session.Add("soyad", surnametxt.Text);
                                Session.Add("email", emailtxt.Text);
                                Response.Redirect("login.aspx");
                                baglanti.Close();
                            }
                        }
                    }

                }

                
            }
            catch(Exception ex)
            {

            }
        }
    }
}