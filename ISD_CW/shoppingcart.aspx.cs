using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ISD_CW.Models;
using ISD_CW.Logic;
using System.Collections.Specialized;
using System.Collections;
using System.Web.ModelBinding;
using System.Configuration;
using System.Data.SqlClient;

namespace ISD_CW
{
    public partial class shoppingcart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public List<cartitem> Getcoursecartitems()
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            return actions.GetCartItems();
  
        }

        protected void CartList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void updatebutton_Click(object sender, EventArgs e)
        {

        }

        protected void CheckoutButton_Click(object sender, EventArgs e)
        {
           
        }
    }
}