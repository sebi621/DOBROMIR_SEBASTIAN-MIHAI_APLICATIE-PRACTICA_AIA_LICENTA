using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(School_Tickets.Startup))]
namespace School_Tickets
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
