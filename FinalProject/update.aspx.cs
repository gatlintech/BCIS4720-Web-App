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
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Asking for information from the server without a button being clicked
            if (!IsPostBack)

                if (Session["user"] != null)
                {
                    // Display the current users information from the database.
                    // This is the same code as the read and login pages.

                    // Declare a reader
                    SqlDataReader DispCurrent;

                    // Declare a connection
                    SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);

                    // Declare a command
                    SqlCommand cmd = new SqlCommand("SELECT * FROM [Login] WHERE Email = @Email", conn);
                    cmd.Parameters.AddWithValue("@Email", Session["email"].ToString());

                    // Open Connection
                    conn.Open();

                    // Execute the command
                    DispCurrent = cmd.ExecuteReader();

                    while (DispCurrent.Read())
                    {
                        lblEmail.Text = DispCurrent.GetString(0);

                        // The rest of the labels
                        lblPassword.Text = DispCurrent.GetString(1);
                        lblFirstName.Text = DispCurrent.GetString(2);
                        lblLastName.Text = DispCurrent.GetString(3);
                        lblYearofBirth.Text = DispCurrent.GetInt32(4).ToString();


                    }

                    // Close the connection
                    DispCurrent.Close();
                    conn.Close();

                    // Turn off textbox controls
                    // Only show when checkbox is clicked
                    txtPassword.Visible = false;
                    txtConfirmPassword.Visible = false;
                    txtFirstName.Visible = false;
                    txtLastName.Visible = false;
                    txtYearofBirth.Visible = false;

                    // Turn off validation controls
                    rfvPassword.Visible = false;
                    cvPassword.Visible = false;
                    rfvFirstName.Visible = false;
                    rfvLastName.Visible = false;
                    rfvYearoFBirth.Visible = false;

                    // Hide the update labels
                    lblConfirmPassword.Visible = false;
                    lblNewValue.Visible = false;


                    // Make sure all of the checkboxes are unchecked
                    cbFirstName.Checked = false;
                    cbPassword.Checked = false;
                    cbLastName.Checked = false;
                    cbYearofBirth.Checked = false;

                }
                else
                {
                    Response.Redirect("default.aspx");
                }
        }

        protected void btnUpdateInformation_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand(SqlDataSource1.UpdateCommand, conn);

            // Password
            if (cbPassword.Checked)
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            else
                cmd.Parameters.AddWithValue("@Password", lblPassword.Text);

            // First name
            if (cbFirstName.Checked)
                cmd.Parameters.AddWithValue("@FName", txtFirstName.Text);
            else
                cmd.Parameters.AddWithValue("@FName", lblFirstName.Text);

            // Last name
            if (cbLastName.Checked)
                cmd.Parameters.AddWithValue("@LName", txtLastName.Text);
            else
                cmd.Parameters.AddWithValue("@LName", lblLastName.Text);

            // Year‑of‑birth
            if (cbYearofBirth.Checked)
                cmd.Parameters.AddWithValue("@YOB", txtYearofBirth.Text);
            else
                cmd.Parameters.AddWithValue("@YOB", lblYearofBirth.Text);

            // Key (email)
            cmd.Parameters.AddWithValue("@Email", Session["email"].ToString());

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // refresh so labels show new data
            Response.Redirect("update.aspx");
        }




        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPassword.Checked == true)
            {
                txtPassword.Visible = true;
                txtConfirmPassword.Visible = true;
                rfvPassword.Enabled = true;
                cvPassword.Visible = true;
                lblNewValue.Visible = true;
                lblConfirmPassword.Visible = true;
            }
            else
            {
                txtPassword.Visible = false;
                txtConfirmPassword.Visible = false;
                rfvPassword.Enabled = false;
                cvPassword.Visible = false;
                lblNewValue.Visible = false;
                lblConfirmPassword.Visible = false;
            }
        }

        protected void cbFirstName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFirstName.Checked == true)
            {
                txtFirstName.Visible = true;
                rfvFirstName.Visible = true;
                lblNewValue.Visible = true;

            }
            else
            {
                txtFirstName.Visible = false;
                rfvFirstName.Visible = false;
                lblNewValue.Visible = false;

            }
        }

        protected void cbLastName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLastName.Checked == true)
            {
                txtLastName.Visible = true;
                rfvLastName.Visible = true;
                lblNewValue.Visible = true;

            }
            else
            {
                txtLastName.Visible = false;
                rfvLastName.Visible = false;
                lblNewValue.Visible = false;

            }
        }

        protected void cbYearofBirth_CheckedChanged(object sender, EventArgs e)
        {
            if (cbYearofBirth.Checked == true)
            {
                txtYearofBirth.Visible = true;
                rfvYearoFBirth.Visible = true;
                lblNewValue.Visible = true;

            }
            else
            {
                txtYearofBirth.Visible = false;
                rfvYearoFBirth.Visible = false;
                lblNewValue.Visible = false;

            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // empty every textbox that can be edited
            txtPassword.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtYearofBirth.Text = string.Empty;

            // untick the edit check‑boxes
            cbPassword.Checked = false;
            cbFirstName.Checked = false;
            cbLastName.Checked = false;
            cbYearofBirth.Checked = false;

            // hide / disable the controls exactly the same way Page_Load does
            txtPassword.Visible = false;
            txtConfirmPassword.Visible = false;
            txtFirstName.Visible = false;
            txtLastName.Visible = false;
            txtYearofBirth.Visible = false;

            rfvPassword.Enabled = false;
            cvPassword.Visible = false;
            rfvFirstName.Visible = false;
            rfvLastName.Visible = false;
            rfvYearoFBirth.Visible = false;

            lblConfirmPassword.Visible = false;
            lblNewValue.Visible = false;
        }
    }
}