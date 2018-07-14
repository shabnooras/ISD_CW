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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //con1.Open();
            // checking existing useremail  
            //SqlCommand cmd = new SqlCommand(" select user_email from userTable ", con1);
            //SqlDataReader dr = cmd.ExecuteReader();

            // conneting to database with "ConnectionString"
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
        
            SqlCommand cmd = new SqlCommand("insert into userTable values ('"+FNTextBox.Text+ "', '" + LNTextBox.Text + "','" + TextBoxADRS.Text + "', '" + REGemailTextBox.Text + "', '" + REGpasswordTextBox.Text + "')", con);
           
            cmd.ExecuteNonQuery();
            Signuplabel.Visible = true;
            Signuplabel.Text = "User registered successfully";
            // set the textboxes to blank for next user to register
            FNTextBox.Text = "";
            LNTextBox.Text = "";
            TextBoxADRS.Text = "";
            REGemailTextBox.Text = "";
            REGcEmailTextBox.Text = "";
            REGpasswordTextBox.Text = "";
            REGcpasswordTextBox.Text = "";
            FNTextBox.Focus();
        }
        protected void CustomValidatorRegPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string data = args.Value;
            //start by setting false
            args.IsValid = false;
            //code to accept password length of 6-12 characters long
            if (data.Length < 6 || data.Length > 12) return;
            bool uc = false;
            foreach (char c in data)
            {
                //check if there exists an uppercase letter
                if (c >= 'A' && c <= 'Z')
                {
                    uc = true; break;
                }
            }
            if (!uc) return;
            bool lc = false;
            foreach (char c in data)
            {
                //check if there exists an lowercase letter
                if (c >= 'a' && c <= 'z')
                { lc = true; break; }
            }
            if (!lc) return;
            bool num = false;
            foreach (char c in data)
            {
                //check if there exists a number
                if (c >= '0' && c <= '9')
                { num = true; break; }
            }
            if (!num) return;
            //must be valid
            args.IsValid = true;
        }

        protected void signupcancelButton_Click(object sender, EventArgs e)
        {

        }

  
    }
}