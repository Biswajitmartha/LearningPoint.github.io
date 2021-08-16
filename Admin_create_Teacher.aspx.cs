using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_create_Teacher : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MYconnection"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    string sta1, sta2;
    string filename1;
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
            if ((fu1.PostedFile != null) && (fu1.PostedFile.ContentLength >= 0))
            {
                filename1 = fu1.PostedFile.FileName.ToString();

                if (File.Exists(Server.MapPath("~/TUP/") + "\\" + filename1))
                {
                    filename1 = fu1.PostedFile.FileName.ToString() + "1";
                    fu1.SaveAs(Server.MapPath("~/TUP/") + "\\" + filename1);
                    filename1 = "~/TUP/" + filename1.ToString();

                    //  ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('photo name already exits, please rename the file.')", true);

                }
                else
                {
                    if (filename1 == "")
                    { }
                    else
                    {
                        fu1.SaveAs(Server.MapPath("~/TUP/") + "\\" + filename1);
                        filename1 = "~/TUP/" + filename1.ToString();
                    }
                }
            }
            cmd = new SqlCommand("insert into ELN_Profiles values (@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11)", con);
            cmd.Parameters.Add(new SqlParameter("@1", TextBox1.Text));
            cmd.Parameters.Add(new SqlParameter("@2", TextBox2.Text));
            cmd.Parameters.Add(new SqlParameter("@3", DropDownList1.Text));
            cmd.Parameters.Add(new SqlParameter("@4", TextBox3.Text));
            cmd.Parameters.Add(new SqlParameter("@5", TextBox4.Text));
            cmd.Parameters.Add(new SqlParameter("@6", TextBox5.Text));
            cmd.Parameters.Add(new SqlParameter("@7", DropDownList2.Text));
            cmd.Parameters.Add(new SqlParameter("@8", TextBox7.Text));
            cmd.Parameters.Add(new SqlParameter("@9", TextBox8.Text));
            cmd.Parameters.Add(new SqlParameter("@10", filename1.ToString()));
            cmd.Parameters.Add(new SqlParameter("@11", System.DateTime.Today.ToShortDateString()));
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into ELN_LogIn values(@1,@2,@3,@4)", con);
            cmd.Parameters.Add(new SqlParameter("@1", TextBox1.Text));
            cmd.Parameters.Add(new SqlParameter("@2", TextBox8.Text));
            cmd.Parameters.Add(new SqlParameter("@3", "T"));
            cmd.Parameters.Add(new SqlParameter("@4", "A"));
            int kp=cmd.ExecuteNonQuery();
            if (kp > 0)
            {
                Response.Redirect("Admin_Home.aspx");
            }
        }
        catch (SqlException q)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert(' There is connection error, please refesh the page.')", true);
        }
        catch (IOException io)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('"+io.ToString()+"')", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('"+ex.ToString()+"')", true);
        }
        
    }
}