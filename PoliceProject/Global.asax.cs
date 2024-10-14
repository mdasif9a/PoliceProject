﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace PoliceProject
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition(
           "jquery",
           new ScriptResourceDefinition
           {
               Path = "~/Scripts/jquery-3.6.3.min.js",
               DebugPath = "~/Scripts/jquery-3.6.3.min.js",
               CdnPath = "https://code.jquery.com/jquery-3.6.3.min.js",
               CdnDebugPath = "https://code.jquery.com/jquery-3.6.3.min.js"
           });
        }
    }
}