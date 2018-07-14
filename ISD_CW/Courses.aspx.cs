using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.DynamicData;

namespace ISD_CW
{
    public partial class Courses : System.Web.UI.Page
    {
        SqlConnection con2;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            //to catch any error while connecting to the database
            try
            {
                //open the database connection
                con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con2.Open();
            }
            catch (Exception ex) { }

            SqlCommand cmd = new SqlCommand("select * from dbo.userTable", con2);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            SqlDataReader dr = cmd.ExecuteReader();
            table.Load(dr);
            course.DataSource = table;
            course.DataBind();

            

           
            con2.Close();

        }
    }
}