using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using School_Tickets.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace School_Tickets
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindById(Context.User.Identity.GetUserId());
                Email.Text = user.Email;
                FirstName.Text = user.FirstName + " " + user.LastName;
            }
        }
        protected void SendMessage_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            ApplicationUser user = manager.FindByEmail("larea99@yahoo.com");
            manager.SendEmail(user.Id, Email.Text, message.Value);
            FailureText.Text = "Mesajul a fost timis cu succes!";
            message.Value = "";

        }

    }
}