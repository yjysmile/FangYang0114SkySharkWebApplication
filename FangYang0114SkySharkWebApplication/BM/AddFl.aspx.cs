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
    public partial class AddFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT FltNo FROM dtFltDetails";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();

            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "FlightNo");
            conn.Close();
            foreach (DataRow row in dataset.Tables["FlightNo"].Rows)
            {
                //step 1- Ensure the flight number is unique
                if (row[0].ToString().Trim() == txtFlightNumber.Text.Trim())
                {
                    lblMessage.Text = "The Flight already exists. Please try another flight number";
                    return;
                }
            }
            //step 2 Validate departure and arrival time
            TimeSpan deptime, arrtime;
            String DepDateTime, ArrDateTime;
            try
            {
                deptime = Convert.ToDateTime(txtDepartureTime.Text).TimeOfDay;
                arrtime = Convert.ToDateTime(txtDepartureTime.Text).TimeOfDay;
                DepDateTime = Calendar1.SelectedDate.ToShortDateString() + " " + deptime.ToString();
                ArrDateTime = Calendar2.SelectedDate.ToShortDateString() + " " + arrtime.ToString();
                if (deptime >= arrtime)
                {
                    lblMessage.Text = "Departure Time cant be greater than or equal to arrival time";
                    return;
                }
            }
            catch
            {
                lblMessage.Text = "Invalid departure or arrival time";
                return;
            }
            //step 3:Update flight details
            try
            {
                conn.Open();
                string updateSql = "INSERT INTO [dtFltDetails] ([FltNo],[Origin],[Destination],[Deptime],[Arrtime]," +
                    " [AricraftType]," +
                    " [SeatsExec], [SeatsBn], [FareExec], [FareBn], [LaunchDate])" +
                    " VALUES (@FltNo ，@Origin, @Destination, @Deptime, @Arrtime, @AricraftType," +
                    " @SeatsExec, @SeatsBn, @FareExec, @FareBn, @LaunchDate)";
                SqlCommand cmd2 = new SqlCommand(updateSql, conn);
                cmd2.Parameters.AddWithValue("@FltNo", txtFlightNumber.Text.Trim());
                cmd2.Parameters.AddWithValue("@Origin", txtOriginPlace.Text.Trim());
                cmd2.Parameters.AddWithValue("@Destination", txtDestination.Text.Trim());
                cmd2.Parameters.AddWithValue("@Deptime", DepDateTime);
                cmd2.Parameters.AddWithValue("@Arrtime", ArrDateTime);
                cmd2.Parameters.AddWithValue("@AricraftType", txtAircraftType.Text.Trim());
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtNoOfExecSeats.Text.Trim()));
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtNoOfBusiSeats.Text.Trim()));
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtExecFare.Text.Trim()));
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtBusiFare.Text.Trim()));
                cmd2.Parameters.AddWithValue("@LaunchDate", DateTime.Today.Date.ToShortDateString());
                int n = cmd2.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                conn.Close();
                return;
            }
            conn.Close();
            lblMessage.Text = "Flight add Successfully";
            txtFlightNumber.Text = "";
            txtOriginPlace.Text = "";
            txtAircraftType.Text = "";
            txtArrivalTime.Text = "";
            txtBusiFare.Text = "";
            txtDepartureTime.Text = "";
            txtDestination.Text = "";
            txtExecFare.Text = "";
            txtFlightNumber.Text = "";
            txtNoOfBusiSeats.Text = "";
            txtNoOfExecSeats.Text = "";
            txtOriginPlace.Text = "";
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            txtFlightNumber.Text = "";
            txtOriginPlace.Text = "";
            txtAircraftType.Text = "";
            txtArrivalTime.Text = "";
            txtBusiFare.Text = "";
            txtDepartureTime.Text = "";
            txtDestination.Text = "";
            txtExecFare.Text = "";
            txtFlightNumber.Text = "";
            txtNoOfBusiSeats.Text = "";
            txtNoOfExecSeats.Text = "";
            txtOriginPlace.Text = "";
        }
    }
}