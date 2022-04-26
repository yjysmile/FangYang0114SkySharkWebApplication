using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FangYang0114SkySharkWebApplication.BM
{
    public partial class FreqFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd1_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            try
            {
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFliers Select Email, Discount=@Discount from dtPassengerDetails where TotalTimesFlown>=@TotalTimesFlown";

                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", lstDisc1.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@TotalTimesFlown", listTimeFollown.SelectedItem.Text.Trim());
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Record Added";
                //select
                String selectsql = "SELECT * from dtFrequentFliers";
                cmd = new SqlCommand(selectsql, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet, "FrequentFliers");

                DataView source = new DataView(dataSet.Tables["FrequentFliers"]);

                DataGrid.DataSource = source;
                DataGrid.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void btnAdd2_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            if (txtFare.Text == "" || txtFare.Text == null)
            {
                lblMessage.Text = "Invalid Parameter for fare Collected";
            }
            try
            {
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFliers Select Email, Discount=@Discount from dtPassengerDetails where FareCollected>=@FareCollected";

                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", lstDisc2.SelectedItem.Text.Trim());
                cmd.Parameters.AddWithValue("@TotalTimesFlown", listTimeFollown.SelectedItem.Text.Trim());
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Record Added";
                //select
                String selectsql = "SELECT * from dtFrequentFliers";
                cmd = new SqlCommand(selectsql, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet, "FrequentFliers");

                DataView source = new DataView(dataSet.Tables["FrequentFliers"]);

                DataGrid.DataSource = source;
                DataGrid.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}