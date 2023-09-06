using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using School_Tickets.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Tickets.Account
{
    public partial class CreateThicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMessage_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            ApplicationUser user = manager.FindById(User.Identity.GetUserId());
            var db = new ApplicationDbContext();
            user.Thickets.Add(new Thicket {CreatedDate = DateTime.Now, Status = "new", Message = message.Value, EndDate = DateTime.Now });
            manager.Update(user);
            Response.Redirect("~/Account/Tickets");
           


        }
    }
}