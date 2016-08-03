using MusicShf.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using X.PagedList;

namespace MusicShf.Controllers
{
    public class StoreController : Controller
    {
        MusicShfEntity db = new MusicShfEntity();
        
        // GET: Store
        //带初始化值的参数必须放到不到值的参数的后面
        public ActionResult Index(string search,int page=1)
        {
            int pageSize = 24;

            IPagedList<Albums> list = null;

            if (string.IsNullOrEmpty(search))
            {
                list = db.Albums.OrderByDescending(a => a.AlbumId).ToPagedList(page, pageSize);
            }
            else
            {
                ViewBag.search = search;
                list = db.Albums.Where(a => a.Title.Contains(search)).OrderByDescending(a=>a.AlbumId).ToPagedList(page, pageSize);
            }
       
            //IPagedList<Albums> list = db.Albums.OrderByDescending(a=>a.AlbumId).ToPagedList(page, pageSize);
            return View(list);
        }

        public ActionResult Detail(int id)
        {
            return View(db.Albums.Find(id));

        }
    }
}