using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class New_folder_production_Database_EditDelete_DB : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\PlacementPortal\App_Data\MainDatabase.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDetails();
        }
    }

    protected void BindDetails()
    {
        Con.Open();
        string SelectQuery = "SELECT Id,usn,name,father_name,dob,gender,caste,category FROM StudentDetails";
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
        SqlDataAdapter SelectDA = new SqlDataAdapter(SelectCmd);
        DataSet SelectDS = new DataSet();
        SelectDA.Fill(SelectDS);
        Con.Close();
        if (SelectDS.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = SelectDS;
            GridView1.DataBind();
        }
        else
        {
            SelectDS.Tables[0].Rows.Add(SelectDS.Tables[0].NewRow());
            GridView1.DataSource = SelectDS;
            GridView1.DataBind();
            int ColumnCount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = ColumnCount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindDetails();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        Con.Open();
        string DeleteQuery = "DELETE FROM StudentDetails WHERE Id=" + ID;
        SqlCommand DeleteCmd = new SqlCommand(DeleteQuery, Con);
        int result = DeleteCmd.ExecuteNonQuery();
        Con.Close();
        if (result == 1)
        {
            BindDetails();
            LblResult.Text = "Details Deleted Successfully";
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindDetails();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
        TextBox TxtUSN = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUSN");
        TextBox TxtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtName");
        TextBox TxtFatherName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtFatherName");
        TextBox TxtDOB = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDOB");
        TextBox TxtGender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtGender");
        TextBox TxtCaste = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCaste");
        TextBox TxtCategory = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtCategory");
        Con.Open();
        string UpdateQuery = "UPDATE StudentDetails SET usn='" + TxtUSN.Text + "',name='" + TxtName.Text + "',father_name='" + TxtFatherName.Text + "',dob='" + TxtDOB.Text + "',gender='" + TxtGender.Text + "',caste='" + TxtCaste.Text + "',category='" + TxtCategory.Text + "' WHERE Id=" + ID;
        SqlCommand UpdateCmd = new SqlCommand(UpdateQuery, Con);
        UpdateCmd.ExecuteNonQuery();
        Con.Close();
        LblResult.Text = "Details Updated Successfully";
        GridView1.EditIndex = -1;
        BindDetails();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
}