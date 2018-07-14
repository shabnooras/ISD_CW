using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using ISD_CW.Models;

namespace ISD_CW.Models
{
    public class p_context : DbContext
    {
        public p_context() : base("ISD_CW")
        {
        }
        public DbSet<category> Categories { get; set; }
        public DbSet<product> Products { get; set; }

        public DbSet<cartitem> coursecartitems { get; set; }
    }
}