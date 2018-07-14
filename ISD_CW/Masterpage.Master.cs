using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ISD_CW.Models;

namespace ISD_CW
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                imageselect();
            }
            
        }
        public IQueryable<category> GetCategories()
        {
            var _db = new ISD_CW.Models.p_context();
            IQueryable<category> query = _db.Categories;
            return query;
        }
        protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
        {
          
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            imageselect();

        }

        private void imageselect()
        {
            //to display images randomly on event of automatic ticks
            Random _rand = new Random();
            int i = _rand.Next(1, 5);
            Image1.ImageUrl = "~/images/banners/" + i.ToString() + ".jpg";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void categoryList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MastersigninButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}