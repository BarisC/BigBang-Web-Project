using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BigBang_original
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Text = Session["aramatext"].ToString();
        }

        protected void btnArama_Click(object sender, EventArgs e)
        {
            Response.Redirect("search.aspx");
        }

        protected void btnSoru_Click(object sender, EventArgs e)
        {
            Session.Add("aramatext", txtArama.Text);
            Response.Redirect("default.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}