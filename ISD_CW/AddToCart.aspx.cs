using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using ISD_CW.Logic;

namespace ISD_CW
{
    public partial class AddToCart : System.Web.UI.Page
    {// this page just checks for the productid and adds to the cart and then immediately
        //redirects to shopping cart page
        protected void Page_Load(object sender, EventArgs e)
        {
                string rawId = Request.QueryString["ProductID"];
                int ProductID;
                if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out ProductID))
                {
                    using (ShoppingCartActions usersshoppingcart = new ShoppingCartActions())
                    {
                        usersshoppingcart.AddToCart(Convert.ToInt16(rawId));
                    }

                }
                else
                {
                    Debug.Fail("ERROR : We should never get to AddToCart.aspx without a ProductId.");
                    throw new Exception("ERROR : It is illegal to load AddToCart.aspx without setting a ProductId.");
                }
                Response.Redirect("shoppingcart.aspx");

            }
        }
}