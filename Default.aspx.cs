using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MYconnection"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    string sta1, sta2;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //try
        //{
        //if (con.State == ConnectionState.Closed)
        //{
        //    con.Open();
        //}
        con.Close();con.Open();
            cmd = new SqlCommand("select * from ELN_LogIn where ELN_RegdNo='" + tbx_Roll_No.Text + "' and ELN_Passward='" + tbx_password.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                sta1 = dr["ELN_Category"].ToString();
                sta2 = dr["ELN_Status"].ToString();
                if (sta1 == "S" && sta2 == "A")
                {
                    Session["login"] = tbx_Roll_No.Text;
                    Response.Redirect("User_Home.aspx");
                }
                else
                {
                    if (sta1 == "T" && sta2 == "A")
                    {
                        Session["login"] = tbx_Roll_No.Text;
                        Response.Redirect("Teacher_Home.aspx");
                    }
                    else
                    {
                        if (sta1 == "A" && sta2 == "A")
                        {
                            Session["login"] = tbx_Roll_No.Text;
                            Response.Redirect("Admin_Home.aspx");
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('You may blocked by admin, contact admin.')", true);
                            Response.Redirect("Default.aspx");
                        }
                    }
                }
            }
            else
            {
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Either RegdNo or passward is incorrect please verify.')", true);
                //Response.Redirect("Default.aspx");
            }
    //    }
    //    catch (SqlException jo)
    //    {
    //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Unable to connect, retry again !')", true);
    //    }
    //    catch (IOException io)
    //    {
            
    //    }
    //    catch (Exception lll)
    //    {
    //        //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('We found an error, retry again !')", true);
    //       // Response.Redirect("Default.aspx");
    //    }
    }
    
}