using MusicShf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicShf.Controllers
{
    public class CheckOutController : Controller
    {
        MusicShfEntity db = new MusicShfEntity();
        // GET: CheckOut
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SubmitOrder()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SubmitOrder(Orders order)
        {
            if(ModelState.IsValid)
            {
                order.Username = User.Identity.Name;
                order.OrderDate = DateTime.Now;

                db.Orders.Add(order);
                db.SaveChanges();

                var cartItems = db.Carts.Where(p => p.CartId == User.Identity.Name).ToList();

                decimal total=0;
                //初始化，并计算订单总金额
                foreach (var item in cartItems)
                {
                    var orderDetail = new OrderDetails()
                    {
                        AlbumId = item.AlbumId,
                        OrderId = order.OrderId,
                        UnitPrice=item.Albums.Price,
                        Quantity=item.Count
                    };
                    db.OrderDetails.Add(orderDetail);
                    total += item.Count * item.Albums.Price;
                }
                order.Total = total;
                //实现删除购物车中的商品信息
                db.Carts.RemoveRange(cartItems);
                db.SaveChanges();

                return RedirectToAction("Complate", new { id = order.OrderId });

            }
            return View();
        }

        public ActionResult Complate(int id)//传递订单编号
        {
            ViewBag.OrderId = id;
            return View();
        }
    }

}