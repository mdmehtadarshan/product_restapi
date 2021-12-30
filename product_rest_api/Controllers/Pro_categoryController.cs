using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using product_rest_api.Models;

namespace product_rest_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Pro_categoryController : ControllerBase
    {
        private readonly Restapi_react_prodbDbContext _context;

        public Pro_categoryController(Restapi_react_prodbDbContext context)
        {
            _context = context;
        }

        // GET: api/Pro_category
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Pro_category>>> GetPro_Categories()
        {
            return await _context.Pro_Categories.ToListAsync();
        }

        // GET: api/Pro_category/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Pro_category>> GetPro_category(decimal id)
        {
            var pro_category = await _context.Pro_Categories.FindAsync(id);

            if (pro_category == null)
            {
                return NotFound();
            }

            return pro_category;
        }

        // PUT: api/Pro_category/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPro_category(decimal id, Pro_category pro_category)
        {
            if (id != pro_category.Cat_id)
            {
                return BadRequest();
            }

            _context.Entry(pro_category).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Pro_categoryExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Pro_category
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult> PostPro_category([FromBody]object catData)
        {
            Pro_category pro_category = JsonConvert.DeserializeObject<Pro_category>(catData.ToString());
            _context.Pro_Categories.Add(pro_category);
            await _context.SaveChangesAsync();

            return Ok();//CreatedAtAction("GetPro_category", new { id = pro_category.Cat_id }, pro_category);
        }

        // DELETE: api/Pro_category/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePro_category(decimal id)
        {
            var pro_category = await _context.Pro_Categories.FindAsync(id);
            if (pro_category == null)
            {
                return NotFound();
            }

            _context.Pro_Categories.Remove(pro_category);
            await _context.SaveChangesAsync();

            return Ok(); 
        }

        private bool Pro_categoryExists(decimal id)
        {
            return _context.Pro_Categories.Any(e => e.Cat_id == id);
        }
    }
}
