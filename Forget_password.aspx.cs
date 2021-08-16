using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Forget_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MYconnection"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    string sta1, sta2;
    bool b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand("select * from ELN_Profiles where ELN_RegdNo='" + tbx_Roll_No.Text + "' and ELN_PhoneNo='" + tbx_phoneNo + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                dr.Close();
                cmd = new SqlCommand("update ELN_Profiles set ELN_Password='" + tbx_pass + "' where ELN_RegdNo='" + tbx_Roll_No.Text + "' and ELN_PhoneNo='" + tbx_phoneNo + "'", con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("UPPDATE ELN_LogIn set ELN_Passward='" + tbx_pass + "' where ELN_RegdNo='" + tbx_Roll_No.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Either RegdNo or phone is incorrect is incorrect please verify.')", true);
                Response.Redirect("Default.aspx");
            }
        }
        catch (SqlException jo)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Unable to connect, retry again !')", true);
        }
        catch (Exception lll)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('We found an error, retry again !')", true);
            Response.Redirect("Default.aspx");
        }
    }
}