using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BigBang_original
{
    public partial class profil_follow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelabel5.Text = Session["membername"].ToString();
        }

        protected void takipciler_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.takipci.aspx");
        }

        protected void sorularin_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.soru.aspx");
        }

        protected void yanitların_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.yanıt.aspx");
        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {

            Response.Redirect("default.aspx");
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.follow.aspx");
        }
    }
}