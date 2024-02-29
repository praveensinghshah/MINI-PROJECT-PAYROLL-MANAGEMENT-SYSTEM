using System;
using System.Configuration; 
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class newemployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToString(Session["currentusertype"]) != "Administrator")
                Response.Redirect("welcome.aspx");
            if (Page.IsPostBack == false)
            {
                dropLevel.Items.Clear();
                DataTable dt = BusinessAccessLayer.Query("select * from level order by levelid");
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                        dropLevel.Items.Add(Convert.ToString(dt.Rows[i]["levelid"]));
                    dropLevel.SelectedIndex = 0;
                }
                else
                    Response.Redirect("welcome.aspx", false);
                int newemployeesid = BusinessAccessLayer.GetNextID("employee", "employeesid");
                lblEmployeeID.Text = Convert.ToString(newemployeesid);
                txtName.Focus();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Error: " + ex.Message;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string name, phone, email, designation, levelid, username, password;
            name = txtName.Text;
            phone = txtPhone.Text;
            email = txtEmail.Text;
            designation = txtDesignation.Text;
            levelid = dropLevel.SelectedItem.Text;
            username = txtUsername.Text;
            password = txtPassword.Text;

            // Get the connection string from appSettings
            string connectionString = ConfigurationManager.AppSettings["ConnectionString"];

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("ManageEmployee", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Operation", "INSERT");
                    command.Parameters.AddWithValue("@EmpName", name);
                    command.Parameters.AddWithValue("@Phone", phone);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Designation", designation);
                    command.Parameters.AddWithValue("@LevelId", levelid);
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Passwordd", password);

                    command.ExecuteNonQuery();
                }
            }

            Response.Redirect("employees.aspx", false);
        }
        catch (Exception ex)
        {
            lblError.Text = "Error: " + ex.Message;
        }
    }
}
