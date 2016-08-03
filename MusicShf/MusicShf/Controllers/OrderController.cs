using MusicShf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicShf.Controllers
{
    [Authorize]
    public class OrderController : Controller
    {
        MusicShfEntity db = new MusicShfEntity();
        // GET: Order
        public ActionResult Index()
        {
            var list = db.Orders.Where(p => p.Username == User.Identity.Name).ToList();
            return View(list);
        }

        public ActionResult Detail(int orderId)
        {
            var list = db.Orders.Where(p => p.OrderId == orderId).ToList();
            return View(list);
        }
    }
}