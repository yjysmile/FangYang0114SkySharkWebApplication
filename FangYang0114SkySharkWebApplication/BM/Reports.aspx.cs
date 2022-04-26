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
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String month, date, year;
            month = lstMonth.SelectedItem.Text.Trim();
            year = lstYear.SelectedItem.Text.Trim();

            date = month + "/01/" + year;
            String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT FltNo , SUM(Fare) AS fare from dtDepartedFlights where (DateOfJourney>@date) group by FltNo";
            SqlDataAdapter adapter = new SqlDataAdapter();

            SqlCommand cmd = new SqlCommand(selectSql, conn);
            cmd.Parameters.AddWithValue("@date", date);
            adapter.SelectCommand = cmd;

            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "fare");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["fare"]);

            DataGrid.DataSource = source;
            DataGrid.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT FltNo , DateOfJourney, SUM(Fare) AS Revenue from dtDepartedFlights GROUP BY DateOfJourney, FltNo";
            SqlCommand cmd = new SqlCommand(selectSql, conn);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "Usges");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["Usges"]);

            DataGrid.DataSource = source;
            DataGrid.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT Top 100 Email, FareCollected, TotalTimesFlown from dtPassengerDetails order by TotalTimesFlown ";
            SqlCommand cmd = new SqlCommand(selectSql, conn);

            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "FreqFI");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["FreqFI"]);
            DataGrid.DataSource = source;
            DataGrid.DataBind();
        }
    }
}