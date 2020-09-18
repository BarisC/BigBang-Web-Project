using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BigBang_original
{
    public partial class profil_takipci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelabel4.Text = Session["membername"].ToString();
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.follow.aspx");
        }

        protected void yanitların_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.yanıt.aspx");
        }

        protected void sorularin_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.soru.aspx");
        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {

            Response.Redirect("default.aspx");
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {

        }
    }
}