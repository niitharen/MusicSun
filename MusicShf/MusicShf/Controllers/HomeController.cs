using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MusicShf.Models;

namespace MusicShf.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            MusicShfEntity db = new MusicShfEntity();
            // List<Albums> list = db.Albums.ToList();
            //List<Albums> list = db.Albums.OrderByDescending(b => b.AlbumId).ToList();
            // List<Albums> list = db.Albums.OrderByDescending(Order).ToList();
            //此处的Order是下面Order方法的委托——》称为“策略”
            // List<Albums> list = db.Albums.OrderByDescending(b => b.AlbumId).Take(12).ToList();
            //此处的Take()相当于Select语句，Take(12)表示显示前12条记录
            List<Albums> list = db.Albums.OrderByDescending(b => b.OrderDetails.Count).Take(12).ToList();
            //显示销售前12名的订单
            return View(list);
        }

        private int Order(Albums b)
        {
            return b.AlbumId;
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}