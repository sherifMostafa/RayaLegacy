using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RayaLegacy.Pages
{
    public partial class Employees : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            lblMessage.Text = "";
            if (Page.IsPostBack)
                dgvEmployee.DataBind();
        }
        public void ClearData()
        {
            txtName.Text = "";
            txtSalary.Text = "";
            txtHireDate.Text = "";
            lblIdHidden.Text = "";
            lblMessage.Text = "";
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
                Response.Redirect("Login.aspx");

            if(Session["role"].ToString() == "Hr_Admin")
            {
                btnApproved.Visible = true;
            } 
            else
            {
                btnApproved.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Session["userName"] = null;

            Response.Redirect("Login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblIdHidden.Text = dgvEmployee.SelectedRow.Cells[1].Text;
            txtName.Text = dgvEmployee.SelectedRow.Cells[2].Text;
            txtSalary.Text = dgvEmployee.SelectedRow.Cells[3].Text;
            txtHireDate.Text = dgvEmployee.SelectedRow.Cells[4].Text.ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtName.Text != "" && txtSalary.Text != "" && txtHireDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();

                    cmd = new SqlCommand("Insert into Employees(Name , salary,hireDate,status) values (@name , @salary , @hireDate , @status)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
                    cmd.Parameters.AddWithValue("@hireDate", txtHireDate.Text);
                    cmd.Parameters.AddWithValue("@status", "New");

                    cmd.ExecuteNonQuery();
                    
                    con.Close();
                    DataLoad();
                    ClearData();
                }

            } else
            {
                lblMessage.Text = "Fill All Data";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (lblIdHidden.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();

                    cmd = new SqlCommand("Delete From Employees Where Id=@id", con);
                    cmd.Parameters.AddWithValue("@id", lblIdHidden.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearData();
                }

            }
            else
            {
                lblMessage.Text = "Please Select Employee";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtSalary.Text != "" && txtHireDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();

                    cmd = new SqlCommand("Update Employees Set Name=@name,salary=@salary,hireDate=@hireDate where Id=@id", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
                    cmd.Parameters.AddWithValue("@hireDate", txtHireDate.Text);
                    cmd.Parameters.AddWithValue("@id", lblIdHidden.Text);

                    cmd.ExecuteNonQuery();

                    con.Close();
                    DataLoad();
                    ClearData();
                }

            }
            else
            {
                lblMessage.Text = "Please Select Employee";
            }
        }

        protected void btnApproved_Click(object sender, EventArgs e)
        {
            if (lblIdHidden.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();

                    cmd = new SqlCommand("Update Employees Set status=@status where Id=@id", con);
                    cmd.Parameters.AddWithValue("@id", lblIdHidden.Text);
                    cmd.Parameters.AddWithValue("@status", "Approved");
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearData();
                }

            }
            else
            {
                lblMessage.Text = "Please Select Employee";
            }
        }
    }
}