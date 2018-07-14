using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ISD_CW
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con2;
        string email, password, txtpassword;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginButton_Click(object sender, EventArgs e)
        {
            //when user clicks LOGIN button following actions will be executed

            //to catch the error, if there any error comes when try to connect to database
            try
            {
                //open the database connection
                con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con2.Open();
            }
            catch (Exception ex) { }

            //create query to collect the information which we need
            SqlCommand cmd = new SqlCommand(" select user_password , user_email from userTable where user_email = '" + emailTextBox.Text + "'", con2);
            SqlDataReader dr = cmd.ExecuteReader();

            // check user details from database to check if user is registered or not

            if (dr.Read())
            {
               email = dr["user_email"].ToString();
                password = dr["user_password"].ToString();
                txtpassword = passwordTextBox.Text;

                if (txtpassword.Equals(password))
                {
                    //redirect to home page if login successful
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    //display error if password is incorrect
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Invalid password";
                }
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid user";
            }
            }
        }
    }