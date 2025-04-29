using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace Update
{

    protected void Page_Load(object sender, EventArgs e)
    {
        // Is the user logged in?
        bool loggedIn = (Session["user"] != null);

        // What page are we on?  (e.g., "success.aspx")
        string pageName = Path.GetFileName(Request.FilePath).ToLowerInvariant();

        // Show Dashboard only on success.aspx or update.aspx after login
        hlDashboard.Visible = loggedIn &&
                              (pageName == "success.aspx" || pageName == "update.aspx");
    }

    // optional logout handler if you wire a LinkButton to it
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/default.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // Show Dashboard only if the user has logged in
        bool loggedIn = Session["user"] != null;
        hlDashboard.Visible = loggedIn;

        // (Optional) hide Login once logged in
        hlLogin.Visible = !loggedIn;
    }

}