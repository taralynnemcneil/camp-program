using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(mdc_daycamp.Startup))]
namespace mdc_daycamp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
