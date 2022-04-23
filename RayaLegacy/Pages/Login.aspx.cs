using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RayaLegacy.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
                Response.Redirect("Employees.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);


            con.Open();
            string checkUser = "select count(*) from Users where userName='" + txtUserName.Text + "' and password = '"+txtPassWord.Text+"'";
            SqlCommand command = new SqlCommand(checkUser, con);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            con.Close();

            if(temp == 1)
            {
                con.Open();
                string userRole = "select role from Users where userName='" + txtUserName.Text + "' and password = '" + txtPassWord.Text + "'";
                SqlCommand commandForRole = new SqlCommand(userRole, con);
                string role = commandForRole.ExecuteScalar().ToString();
                con.Close();

                Session["useName"] = txtUserName.Text;
                Session["role"] = role;

                Response.Redirect("Employees.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid UserName Or Password";
            }


        }

        protected void txtPassWord_TextChanged(object sender, EventArgs e)
        {

        }
    }
}