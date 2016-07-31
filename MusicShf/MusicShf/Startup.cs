using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MusicShf.Startup))]
namespace MusicShf
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
