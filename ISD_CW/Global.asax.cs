using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Data.Entity;
using ISD_CW.Models;
using ISD_CW.Logic;

namespace ISD_CW
{
    public class Global : System.Web.HttpApplication
    {

        void Application_Start(object sender, EventArgs e)
        {
            // to invoke ScriptResourceMapping property 
            string JqueryVer = "1.6.4";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
                new ScriptResourceDefinition
                {
                    Path = "~/scripts/jquery-" + JqueryVer + "min.js",
                    DebugPath = "~/scripts/jquery-" + JqueryVer + ".js",
                    CdnPath = "http://ajax.aspnetcdn.com/ajax/JQuery/jQuery-" + JqueryVer + "min.js",
                    CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-"
                    + JqueryVer + ".js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                }
                );

            //initialise the product database
            Database.SetInitializer(new DBInitialise());

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}