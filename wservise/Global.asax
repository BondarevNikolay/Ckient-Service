<%@ Application Inherits="wservise.Global" %>
using System;
using System.Collections;
using System.ComponentModel;
using System.Web;
using System.Web.SessionState;
using ServiceStack;

namespace wservice
{
    public class Global : System.Web.HttpApplication
    {

        public class AppHost : AppHostBase
        {
            public AppHost() : base("Hello API", typeof(HelloService).Assembly) {}
        

            public override void Configure (Funq.Container container)
            {

            }
        }

        protected void Application_Start (Object sender, EventArgs e)
        {
            new AppHost ().Init ();
        }
    }
}