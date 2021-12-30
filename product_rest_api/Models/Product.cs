using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace product_rest_api.Models
{
    public class Product
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal Pro_id { get; set; }
        [JsonProperty("name")]
        public string Pro_nm { get; set; }
        [JsonProperty("cat")]
        public string Cat_id { get; set; }
        [JsonProperty("cost")]
        public double Cost { get; set; }
        [JsonProperty("desc")]
        public string Description { get; set; }
        [JsonProperty("isactive")]
        public bool A_ia { get; set; }

    }
}
