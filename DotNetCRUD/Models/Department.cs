namespace DotNetCRUD.Models;

namespace DotNetCRUD.Models
{
    public class Department
    {
        public int DepartmentID { get; set; }
        public string DepartmentName { get; set; }
        public List<Person> People { get; set; }
    }

    
}
