using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Clicked(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\PlacementPortal\App_Data\MainDatabase.mdf;Integrated Security=True");
        conn.Open();
        string user = tbUserName.Text;
        string checkUsername = "select count(*) from Login where username = '" + user + "'";
        SqlCommand com = new SqlCommand(checkUsername,conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if(temp == 1)
        {
            conn.Open();
            string checkPassword = "select password from Login where username = '" + tbUserName.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPassword, conn);
            string password = passCom.ExecuteScalar().ToString();
            conn.Close();
            if (password == tbPassword.Text)
            {
                //Session["New"] = TextBoxUN.Text;
                //Response.Write("Login Successful");
                Session["Username"] = tbUserName.Text;
                Response.Redirect("New folder/production/Company_Add_DB.aspx");
            }
            else
            {
                //Response.Write("Incorrect Password");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Credentials');</script>");
            }
        }
        else
        {
            //Response.Write("Incorrect Password");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Credentials');</script>");
        }
    }

}