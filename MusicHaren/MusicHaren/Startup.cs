using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MusicHaren.Startup))]
namespace MusicHaren
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
