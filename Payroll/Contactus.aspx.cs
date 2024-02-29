using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string email = txtEmail.Text;
        string message = txtMessage.Text;
        string connectionString = ConfigurationManager.AppSettings["ConnectionString"];

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            using (SqlCommand command = new SqlCommand("InsertContactForm", connection))
            {
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Message", message);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }
        Response.Redirect("ThankYou.aspx");
    }
}

    