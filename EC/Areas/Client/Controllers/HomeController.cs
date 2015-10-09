using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EC.Areas.Client.Models;

namespace EC.Areas.Client.Controllers
{
    public class HomeController : Controller
    {
        EC_Entities db = new EC_Entities();
        // GET: Client/Home
        public ActionResult Index()
        {
            var baidang = db.BAIDANGs.Take(4).ToList();
            return View(baidang);
        }
        public ActionResult Product()
        {
            return View();
        }
        public ActionResult ProductDetail()
        {
            return View();
        }
        public ActionResult Login()
        {

            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult Checkout()
        {
            return View();
        }
        public ActionResult Cart()
        {
            return View();
        }
    }
}