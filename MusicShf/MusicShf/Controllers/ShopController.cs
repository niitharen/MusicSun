using MusicShf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicShf.Controllers
{
    [Authorize]
    public class ShopController : Controller
    {
        MusicShfEntity db = new MusicShfEntity();
        // GET: Shop  购物车内容显示的方法
        public ActionResult Index()
        {    //User表示当前已登录的用户
            var carlist=db.Carts.Where(a => a.CartId == User.Identity.Name);
            decimal total = 0;
            foreach (var item in carlist)
            {
                total += item.Count * item.Albums.Price;
            }
            ViewBag.CartTotal = total;
            return View(carlist);
        }
        //实现添加购物车
       // public ActionResult AddToCart(int id)
        public ActionResult AddToCart(int id,int count)
        {
            var album = db.Albums.Find(id);
            if(album!=null)
            {
                var cartItem = db.Carts.SingleOrDefault(p => p.AlbumId == id&&p.CartId==User.Identity.Name);
                    if(cartItem!=null)
                {
                    cartItem.Count+=count;
                }
                    else
                {
                    //  cartItem = new Carts();//可以使用这种，也可以使用下面微软的一种实例化方法
                    cartItem = new Carts()
                    {
                        AlbumId = id,
                        CartId = User.Identity.Name,
                        Count = 1,
                        DateCreated = DateTime.Now
                    };
                db.Carts.Add(cartItem);
                }
            db.SaveChanges();
            }
        return RedirectToAction("Index");
        }
//移除购物车中的商品
        public ActionResult RemoveFromCart(int id)
        {
            // var cartItem = db.Carts.SingleOrDefault(p => p.RecordId == id);
            //此代码存在漏洞，即使不是用户本人也可以删除购物车中的商品，因为它没有验证用户的身份
            //http://localhost:2125/Shop/RemoveFromCart/3、4等用户都可以删除
            var cartItem =db.Carts.SingleOrDefault(p => p.RecordId == id && p.CartId==User.Identity.Name);
            if (cartItem!=null)
            {
                /* if(cartItem.Count>1)
                 {
                     cartItem.Count--;
                 }
                 else
                 {
                     db.Carts.Remove(cartItem);
                 }
                 db.SaveChanges();*/
                db.Carts.Remove(cartItem);
                db.SaveChanges();
            }
             //return RedirectToAction("Index");
            //使用AJAX的书写方法如下：
            var result = new
            {
                ItemId = id,
                CartTotal = ShopCart.CartTotal,
                CartCount = ShopCart.CartCount
            };
            return Json(result);
        }

        public ActionResult UpdateItemCount(int id,int count)
        {
            // var cartItem = db.Carts.SingleOrDefault(p => p.RecordId == id);
            //此代码存在漏洞，即使不是用户本人也可以删除购物车中的商品，因为它没有验证用户的身份
            //http://localhost:2125/Shop/RemoveFromCart/3、4等用户都可以删除
            var cartItem = db.Carts.SingleOrDefault(p => p.RecordId == id && p.CartId == User.Identity.Name);
            if (cartItem != null)
            {
                cartItem.Count = count;
                db.SaveChanges();
            }
            // return RedirectToAction("Index");
            var result = new
            {
                ItemId = id,
                CartTotal = ShopCart.CartTotal,
                CartCount = ShopCart.CartCount
            };
            return Json(result);
        }
        [AllowAnonymous]//表示不需要验证就可以访问
      public ActionResult GetCartSummary()
        {
            ViewBag.Count = ShopCart.CartCount;
            return PartialView("_CartSummary");
        }
  }
}