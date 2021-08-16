using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class New_User : System.Web.UI.Page
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
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (CheckBox1.Checked == true)
        {
            cmd = new SqlCommand("insert into ELN_Profiles values(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11)", con);
            cmd.Parameters.Add(new SqlParameter("@1", tbx_Roll_No.Text));
            cmd.Parameters.Add(new SqlParameter("@2", tbx_TextBox1.Text));
            cmd.Parameters.Add(new SqlParameter("@3", tbx_TextBox2.Text));
            cmd.Parameters.Add(new SqlParameter("@4", tbx_TextBox3.Text));
            cmd.Parameters.Add(new SqlParameter("@5", tbx_TextBox4.Text));
            cmd.Parameters.Add(new SqlParameter("@6", tbx_TextBox5.Text));
            cmd.Parameters.Add(new SqlParameter("@7", ddl_gen.SelectedItem.ToString()));
            cmd.Parameters.Add(new SqlParameter("@8", tbx_TextBox7.Text));
            cmd.Parameters.Add(new SqlParameter("@9", tbx_password.Text));
            cmd.Parameters.Add(new SqlParameter("@10", "n/a"));
            cmd.Parameters.Add(new SqlParameter("@11", System.DateTime.Today));
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into ELN_LogIn values(@1,@2,@3,@4)", con);
            cmd.Parameters.Add(new SqlParameter("@1", tbx_Roll_No.Text));
            cmd.Parameters.Add(new SqlParameter("@2", tbx_password.Text));
            cmd.Parameters.Add(new SqlParameter("@3", "S"));
            cmd.Parameters.Add(new SqlParameter("@4", "A"));
            int m = cmd.ExecuteNonQuery();
            if (m > 0)
            {
                Response.Redirect("Default.aspx");
            }
            else { Response.Redirect("New_User.aspx"); }
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert(' Be conform that you are agree with our policy.')", true);
            //        Response.Redirect("Default.aspx");
            //    }
            //}
            //catch (SqlException sq)
            //{
            //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Your regestation no or phone no already exists ,plz use forgetpassward or contact admin.')", true);
            //    Response.Redirect("Default.aspx");
            //}

        }
    }
   
}