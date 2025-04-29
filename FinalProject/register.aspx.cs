using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace FinalProject

{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any registration page logic here, if needed.
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //Declare a connection
            SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString);

            //Declare a command
            SqlCommand RegCommand = new SqlCommand(SqlDataSource1.InsertCommand, RegCon);

            RegCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            RegCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            //RegCommand.Parameters.AddWithValue("@ConfirmEmail", txtConfirmEmail.Text);
            //RegCommand.Parameters.AddWithValue("@ConfirmPassword", txtConfirmPassword.Text);
            RegCommand.Parameters.AddWithValue("@FName", txtFirstName.Text);
            RegCommand.Parameters.AddWithValue("@LName", txtLastName.Text);
            RegCommand.Parameters.AddWithValue("@YOB", txtYearofBirth.Text);

            //Open the connection
            RegCon.Open();

            //Execute the insert command
            RegCommand.ExecuteNonQuery();

            //Close the connection
            RegCon.Close();

            //Send to a page
            Response.Redirect("default.aspx");



        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clear all fields regardless of validation status.
            txtEmail.Text = "";
            txtConfirmEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtYearofBirth.Text = "";
        }

    }
}