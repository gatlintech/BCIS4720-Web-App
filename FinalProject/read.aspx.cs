using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject

{
    public partial class read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Declare variables for credentials
            string sUID = "";
            string sPass = "";
            string sUser = "";

            //Declare a sqldatareader to store query results
            SqlDataReader myReader;

            //Declare a sqlconnection to connect to the database
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            //Declare a sqlconnection and set the select statement
            //SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
            SqlCommand myCommand = new SqlCommand("SELECT * FROM [Login] WHERE Email = @Email AND Password = @Password");


            //Set the connection for our command to use
            myCommand.Connection = myConnection;

            //Set the parameters (what you send to the command so it can do its comparison)
            //Parameter for email from the textbox
            myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);

            //Parameter for password from the textbox
            myCommand.Parameters.AddWithValue("Password", txtPassword.Text);

            //Open the connection
            myConnection.Open();

            //Execute the selectcommand and assign them to myReader
            myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            //While the reader is being populated, assign the values from the query to the variable

            while (myReader.Read())
            {
                sUID = myReader.GetString(0);
                sPass = myReader.GetString(1);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }

            //Closing reader (closes connection due to CloseConnection behavior)
            myReader.Close();

            if (txtEmail.Text == sUID && txtPassword.Text == sPass)
            {
                //Success, send to success page and create session variable
                Session["user"] = sUser;
                Session["email"] = sUID;
                Response.Redirect("success.aspx");
            }
            else
            {
                //Display an error
                lblMsg.Text = "Invalid credentials";
            }
        }
    }
}