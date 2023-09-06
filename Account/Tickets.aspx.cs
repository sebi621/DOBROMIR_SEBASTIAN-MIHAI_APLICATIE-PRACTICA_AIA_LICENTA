using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using School_Tickets.Account;
using School_Tickets.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Tickets
{
    public partial class Tickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindById(User.Identity.GetUserId());
                rptThick.DataSource = user.Thickets;
                rptThick.DataBind();
            }
        }
      protected  string getName()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            if (Context.User.Identity.IsAuthenticated == false) return "";
            ApplicationUser user = manager.FindById(Context.User.Identity.GetUserId());
           
            return user.FirstName + " " + user.LastName;
        }

        protected void rptThick_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}