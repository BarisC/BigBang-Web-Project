using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BigBang_original
{
    public partial class profil_yanıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usernamelabel3.Text = Session["membername"].ToString();
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.follow.aspx");
        }

        protected void takipciler_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.takipci.aspx");
        }

        protected void sorularin_Click(object sender, EventArgs e)
        {
            Response.Redirect("profil.soru.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {

            Response.Redirect("default.aspx");
        }
    }
}