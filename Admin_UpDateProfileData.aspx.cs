using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_UpDateProfileData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MYconnection"].ToString());
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    string sta1, sta2;
    string filename1, fname2;
    protected void Page_Load(object sender, EventArgs e)
    {
        //fname2 = Session["login"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = "";
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("select * from ELN_Profiles where ELN_RegdNo='" + tbx_regdID + "'", con);
            tbx_regdID.Text = dr["ELN_RegdNo"].ToString();
            tbx_cname.Text = dr["ELN_CName"].ToString();
            tbx_bname.Text = dr["ELN_BranchNM"].ToString();
            tbx_fname.Text = dr["ELN_FName"].ToString();
            tbx_phoneNo.Text = dr["ELN_PhoneNo"].ToString();
            tbx_eid.Text = dr["ELN_EMail"].ToString();
            ddl_gender.SelectedValue = dr["ELN_Geder"].ToString();
            tbx_dob.Text = dr["ELN_DOB"].ToString();
            tbx_passward.Text = dr["ELN_Password"].ToString();
            filename1 = dr["ELN_Photo"].ToString();
            Label16.Text = dr["ELN_Photo"].ToString();
            tbx_creationDate.Text = dr["ELN_Date"].ToString();
        }
        catch (Exception klo)
        {
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
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

                    //  ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('photo name already exits, Rename the file.')", true);

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
            cmd = new SqlCommand("UPDATE ELN_Profiles SET ELN_RegdNo=@1,ELN_CName=@2,ELN_BranchNM=@3,ELN_FName=@4,ELN_PhoneNo=@5,ELN_EMail=@6,ELN_Geder=@7,ELN_DOB=@8,ELN_Password=@9,ELN_Photo=@10,ELN_Date=@11 WHERE ELN_RegdNo='" + tbx_regdID.Text + "'", con);
            cmd.Parameters.Add(new SqlParameter("@1", tbx_regdID.Text));
            cmd.Parameters.Add(new SqlParameter("@2", tbx_cname.Text));
            cmd.Parameters.Add(new SqlParameter("@3", tbx_bname.Text));
            cmd.Parameters.Add(new SqlParameter("@4", tbx_fname.Text));
            cmd.Parameters.Add(new SqlParameter("@5", tbx_phoneNo.Text));

            cmd.Parameters.Add(new SqlParameter("@6", tbx_eid.ToString()));
            cmd.Parameters.Add(new SqlParameter("@7", ddl_gender.Text));
            cmd.Parameters.Add(new SqlParameter("@8", tbx_dob.Text));
            cmd.Parameters.Add(new SqlParameter("@9", tbx_passward.Text));
            cmd.Parameters.Add(new SqlParameter("@10", filename1.ToString()));

            cmd.Parameters.Add(new SqlParameter("@11", tbx_creationDate.Text));

            int chk = cmd.ExecuteNonQuery();
            cmd = new SqlCommand("UPDATE ELN_LogIn SET ELN_Passward='" + tbx_passward.Text + "' where ELN_RegdNo='" + tbx_regdID.Text + "'", con);
            int bot = cmd.ExecuteNonQuery();
            if (chk > 0 && bot > 0)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Your Updation Successfull.')", true);
            }
        }
        catch (Exception exp)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Your Updation Failed , Contact Admin.')", true);

        }
    }
}