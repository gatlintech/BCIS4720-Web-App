using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class success : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Redirect if not logged in
            if (Session["user"] == null)
                Response.Redirect("default.aspx");

            if (!IsPostBack)
            {
                // Show their name in the label
                lblUser.Text = Session["user"].ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear session and go home
            Session.Clear();
            Response.Redirect("default.aspx");
        }
        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            // Just clear session and redirect to home for now
            Session.Clear();
            Response.Redirect("default.aspx");
        }

    }
}
