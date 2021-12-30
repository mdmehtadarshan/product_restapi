using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace product_rest_api.Models
{
    public class Restapi_react_prodbDbContext:DbContext
    {
        public DbSet<Pro_category> Pro_Categories { get; set; }
        public DbSet<Product> Products { get; set; }

        public Restapi_react_prodbDbContext(DbContextOptions<Restapi_react_prodbDbContext> options):base(options)
        { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Pro_category>().ToTable("pro_category");
            modelBuilder.Entity<Product>().ToTable("product");
        }
    }
}
