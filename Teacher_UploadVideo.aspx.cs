using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

public partial class Teacher_UploadVideo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MYconnection"].ToString());
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    SqlCommand cmd;
    string strSQL, str;
    static int ID;
    string filename1;
    protected void Page_Load(object sender, EventArgs e)
    {
        fun1();
    }
    private void fun1()
    {

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        str = "SELECT  *  FROM ELN_Video where ELN_vid_Subject='" + DropDownList1.Text + "' ";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds, "ELN_Video");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        fun1();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            string result_sl = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "ELN_SlNo"));
            LinkButton lnkbtnresult = (LinkButton)e.Row.FindControl("lnkDelete");
            LinkButton lnkbtn = (LinkButton)e.Row.FindControl("lnkDel");

        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fun1();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if ((fu1.PostedFile != null) && (fu1.PostedFile.ContentLength >= 0))
        {
            filename1 = fu1.PostedFile.FileName.ToString();

            if (File.Exists(Server.MapPath("~/video/") + "\\" + filename1))
            {
                filename1 = fu1.PostedFile.FileName.ToString() + "1";
                fu1.SaveAs(Server.MapPath("~/video/") + "\\" + filename1);
                filename1 = "~/video/" + filename1.ToString();

                //  ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('photo name already exits, Rename the file.')", true);

            }
            else
            {
                if (filename1 == "")
                { }
                else
                {
                    fu1.SaveAs(Server.MapPath("~/video/") + "\\" + filename1);
                    filename1 = "~/video/" + filename1.ToString();
                }
            }
        }
        cmd = new SqlCommand("insert into ELN_Video values(@1,@2,@3,@4,@5)", con);
        cmd.Parameters.Add(new SqlParameter("@1", TextBox23.Text));
        cmd.Parameters.Add(new SqlParameter("@2", TextBox22.Text));
        cmd.Parameters.Add(new SqlParameter("@3", DropDownList1.Text));
        cmd.Parameters.Add(new SqlParameter("@4", filename1.ToString()));
        cmd.Parameters.Add(new SqlParameter("@5", TextBox2.Text));
        int r = cmd.ExecuteNonQuery();

        if (r > 0)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Successfully Data Inserted')", true);
            fun1();
        }
    }
    protected void lnkDel_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        //getting particular row linkbutton
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //getting userid of particular row
        //int userid = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value.ToString());
        int ID = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        strSQL = "select ELN_vid_Path from ELN_Video where ELN_SlNo='" + ID + "'";
        cmd = new SqlCommand(strSQL, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string del = dr["ELN_vid_Path"].ToString();
            HttpContext.Current.Response.ContentType = "APPLICATION/OCTET-STREAM";
            String Header = "Attachment; Filename=" + del;
            HttpContext.Current.Response.AppendHeader("Content-Disposition", Header);
            System.IO.FileInfo Dfile = new System.IO.FileInfo(HttpContext.Current.Server.MapPath(del));
            HttpContext.Current.Response.WriteFile(Dfile.FullName.ToString());
            HttpContext.Current.Response.End();

        } dr.Close();
        con.Close();
    }
}