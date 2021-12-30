using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace product_rest_api.Models
{
    [Serializable]
    public class Pro_category
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public decimal Cat_id { get; set; }
        [JsonProperty("name")]
        public string Cat_nm { get; set; }
        [JsonProperty("isactive")]
        public bool A_ia { get; set; }
        [JsonProperty("desc")]
        public string Description { get; set; }

    }
}
