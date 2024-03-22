using DotNetCRUD.Models.DotNetCRUD.Models;

namespace DotNetCRUD.Models;


public class Person
{
    public int PersonID { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }
    public string Address { get; set; }
    public string MobileNumber { get; set; }
    public int DepartmentID { get; set; }
    public Department Department { get; set; }
}