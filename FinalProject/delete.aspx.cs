using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class delete : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null || Session["user"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void btnConfirmDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Student4720ConnectionString3"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM [Login] WHERE Email = @Email", con);
            cmd.Parameters.AddWithValue("@Email", Session["email"].ToString());

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Session.Clear();
            Response.Redirect("default.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("success.aspx");
        }
    }
}
