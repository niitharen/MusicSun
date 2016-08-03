using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MusicShf.Models
{
    public class ShopCart
    {
       /* public static int CartCount()
         {
             using (MusicShfEntity db = new MusicShfEntity())
             { 
                 /* var count = db.Carts.Where(
                       p => p.CartId == HttpContext.Current.User.Identity.Name)
                       .Select(p => p.Count).Sum();
                   return count;
                 //如果购物车中没有数据的话，就会产生异常，故代码修改成下面的代码
                 int? count = db.Carts.Where(
                     p => p.CartId == HttpContext.Current.User.Identity.Name)
                     .Select(p => (int?)p.Count).Sum();//“int?”表示可以存放null数据
                return count ?? 0;
             }
         }*/
        //可以使用属性的形式来创建，如下代码，在-Layout.cshtml文件中相应的位置则改成调用属性的形式即可
        //也可以使用部分视图的形式来实现
        public static int CartCount
         {
             get
             {
                 using (MusicShfEntity db = new MusicShfEntity())
                 {
                     //如果购物车中没有数据的话，就会产生异常，故代码修改成下面的代码
                     int? count = db.Carts.Where(
                         p => p.CartId == HttpContext.Current.User.Identity.Name)
                         .Select(p => (int?)p.Count).Sum();//“int?”表示可以存放null数据
                     return count ?? 0;
                 }
             }
         }
        public static decimal CartTotal
        {
           get { 
               using (MusicShfEntity db = new MusicShfEntity())
               {
                 /* var count = db.Carts.Where(
                      p => p.CartId == HttpContext.Current.User.Identity.Name)
                      .Select(p => p.Count).Sum();
                  return count;*/
                //如果购物车中没有数据的话，就会产生异常，故代码修改成下面的代码
                   decimal? count = db.Carts.Where(
                    p => p.CartId == HttpContext.Current.User.Identity.Name)
                    .Select(p => (int?)p.Count*p.Albums.Price).Sum();//“int?”表示可以存放null数据
                return count ?? 0;
               }
            }
        }
    }
}