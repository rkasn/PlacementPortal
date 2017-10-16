using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;

public partial class New_folder_production_Database_Add_DB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Clicked(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\PlacementPortal\App_Data\MainDatabase.mdf;Integrated Security=True");
        conn.Open();
        string usn = tbUSN.Value.ToLower();
        string SelectQuery = "SELECT * FROM StudentDetails WHERE USN = '" + usn + "'";
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, conn);
        SqlDataReader rd = SelectCmd.ExecuteReader();
 
        if (rd.Read())
        {
            tbName.Value = rd["name"].ToString();
            tbFatherName.Value = rd["father_name"].ToString();
            tbDOB.Value = rd["dob"].ToString();
            tbCaste.Value = rd["caste"].ToString();
            tbCategory.Value = rd["category"].ToString();
            tbInstitutionClass10.Value = rd["institution_class10"].ToString();
            tbInstitutionClass12.Value = rd["institution_class12"].ToString();
            tbYearOfPassingClass10.Value = rd["year_of_passing_class10"].ToString();
            tbYearOfPassingClass12.Value = rd["year_of_passing_class12"].ToString();
            tbBoardClass10.Value = rd["board_class10"].ToString();
            tbBoardClass12.Value = rd["board_class12"].ToString();
            tbAggregateClass10.Value = rd["aggregate_class10"].ToString();
            tbAggregateClass12.Value = rd["aggregate_class12"].ToString();
            tbCourseStartDateClass10.Value = rd["course_start_date_class10"].ToString();
            tbCourseEndDateClass10.Value = rd["course_end_date_class10"].ToString();
            tbCourseStartDateClass12.Value = rd["course_start_date_class12"].ToString();
            tbCourseEndDateClass12.Value = rd["course_end_date_class12"].ToString();
            tbQualification.Value = rd["qualification"].ToString();
            tbBranch.Value = rd["branch"].ToString();
            tbInstitutionCollege.Value = rd["institution"].ToString();
            tbLocation.Value = rd["location"].ToString();
            tbBoardCollege.Value = rd["board_clg"].ToString();
            tbSem1.Value = rd["sem1"].ToString();
            tbSem2.Value = rd["sem2"].ToString();
            tbSem3.Value = rd["sem3"].ToString();
            tbSem4.Value = rd["sem4"].ToString();
            tbSem5.Value = rd["sem5"].ToString();
            tbSem6.Value = rd["sem6"].ToString();
            tbSem7.Value = rd["sem7"].ToString();
            tbSem8.Value = rd["sem8"].ToString();
            tbLandline.Value = rd["landline"].ToString();
            tbMobile.Value = rd["mobile"].ToString();
            tbEmailID.Value = rd["email"].ToString();
            tbPresentAddress.Value = rd["present_address"].ToString();
            tbPermanentAddress.Value = rd["permanent_address"].ToString();
        }
        conn.Close();
    }

    protected void Reset_Clicked(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\PlacementPortal\App_Data\MainDatabase.mdf;Integrated Security=True");
        OleDbConnection Econ;

        string path = string.Format(@"C:\Users\Rohan\Desktop\PlacementPortal\excel\StudentDetailsSheet.xlsx");

        string constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", path);
        Econ = new OleDbConnection(constr);
        string query = string.Format("Select * from [{0}]", "Sheet1$");
        OleDbCommand Ecom = new OleDbCommand(query, Econ);
        Econ.Open();
        DataSet ds = new DataSet();
        OleDbDataAdapter oda = new OleDbDataAdapter(query, Econ);
        Econ.Close();
        oda.Fill(ds);

        DataTable dt = ds.Tables[0];

        SqlBulkCopy objbulk = new SqlBulkCopy(conn);
        objbulk.DestinationTableName = "StudentDetails";
        objbulk.ColumnMappings.Add("ID", "Id");
        objbulk.ColumnMappings.Add("USN", "usn");
        objbulk.ColumnMappings.Add("NAME", "name");
        objbulk.ColumnMappings.Add("Father's Name", "father_name");
        objbulk.ColumnMappings.Add("Date of Birth", "dob");
        objbulk.ColumnMappings.Add("GENDER", "gender");
        objbulk.ColumnMappings.Add("Caste", "caste");
        objbulk.ColumnMappings.Add("Category", "category");
        objbulk.ColumnMappings.Add("InstitutionClass10", "institution_class10");
        objbulk.ColumnMappings.Add("Year of Passing Class10", "year_of_passing_class10");
        objbulk.ColumnMappings.Add("Board Class10", "board_class10");
        objbulk.ColumnMappings.Add("Aggregate Class10", "aggregate_class10");
        objbulk.ColumnMappings.Add("Course Start Date Class10", "course_start_date_class10");
        objbulk.ColumnMappings.Add("Course End Date Class10", "course_end_date_class10");
        objbulk.ColumnMappings.Add("Stream", "stream");
        objbulk.ColumnMappings.Add("Institution Class12", "institution_class12");
        objbulk.ColumnMappings.Add("Board Class12", "board_class12");
        objbulk.ColumnMappings.Add("Year Of Passing Class12", "year_of_passing_class12");
        objbulk.ColumnMappings.Add("Aggregate Class12", "aggregate_class12");
        objbulk.ColumnMappings.Add("Course Start Date Class12", "course_start_date_class12");
        objbulk.ColumnMappings.Add("Course End Date Class12", "course_end_date_class12");
        objbulk.ColumnMappings.Add("Qualification", "qualification");
        objbulk.ColumnMappings.Add("Branch", "branch");
        objbulk.ColumnMappings.Add("Institution", "institution");
        objbulk.ColumnMappings.Add("Location", "location");
        objbulk.ColumnMappings.Add("Board College", "board_clg");
        objbulk.ColumnMappings.Add("1st Sem SGPA","sem1");
        objbulk.ColumnMappings.Add("2nd Sem SGPA", "sem2");
        objbulk.ColumnMappings.Add("3rd Sem SGPA", "sem3");
        objbulk.ColumnMappings.Add("4th Sem SGPA", "sem4");
        objbulk.ColumnMappings.Add("5th Sem SGPA", "sem5");
        objbulk.ColumnMappings.Add("6th Sem SGPA", "sem6");
        objbulk.ColumnMappings.Add("7th Sem SGPA", "sem7");
        objbulk.ColumnMappings.Add("8th Sem SGPA", "sem8");
        objbulk.ColumnMappings.Add("Landline", "landline");
        objbulk.ColumnMappings.Add("Mobile", "mobile");
        objbulk.ColumnMappings.Add("EMail ID", "email");
        objbulk.ColumnMappings.Add("Present Address", "present_address");
        objbulk.ColumnMappings.Add("Permanent Address", "permanent_address");
        conn.Open();
        objbulk.WriteToServer(dt);
        conn.Close();
    }
}