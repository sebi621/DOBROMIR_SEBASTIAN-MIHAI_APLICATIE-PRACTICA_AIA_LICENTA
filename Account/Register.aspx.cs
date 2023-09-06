using System;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using School_Tickets.Models;

namespace School_Tickets.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, FirstName = FirstName.Text, LastName = LastName.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
               
                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                manager.SendEmail(user.Id, "Confirmare", "Confirmați contul apăsând <a href=\"" + callbackUrl + "\">aici</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                string s = result.Errors.FirstOrDefault();
                s = s.Replace("Passwords must have at least one non letter or digit character.", "Parola trebuie să aibă cel puțin un caracter special.");
                s = s.Replace("Passwords must have at least one lowercase", "Parola trebuie să aibă cel puțin o literă mică");
                s = s.Replace("Passwords must have at least one uppercase", "Parola trebuie să aibă cel puțin o literă mare");
                s = s.Replace("Passwords must be at least", "Parola trebuie să aibă cel puțin");
                s = s.Replace("characters", "caractere");
                s = s.Replace("is already taken", "este deja folosit");
                s = s.Replace("Parola trebuie să aibă cel puțin o literă mică ('a'-'z'). Parola trebuie să aibă cel puțin o literă mare ('A'-'Z').", "Parola trebuie să aibă cel puțin o literă mică și o literă mare.");
                s = s.Replace("Parola trebuie să aibă cel puțin un caracter special. Parola trebuie să aibă cel puțin o literă mică și o literă mare.", "Parola trebuie să aibă cel puțin o literă mică, o literă mare și un caracter special.");
                s = s.Replace("caractere. Parola trebuie să aibă cel puțin o literă mică, o literă mare și un caracter special.", "caractere o literă mică, o literă mare și un caracter special.");
                //  manager.Delete(manager.FindByEmail(user.Email));
                ErrorMessage.Text = s;
            }
        }
    }
}