using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_Thu : System.Web.UI.UserControl
{
    protected static string _MaHD;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void Page_PreRender(object sender, System.EventArgs e)
    {
        ObjectDataSource1.SelectParameters["MaHopDong"].DefaultValue = _MaHD;
        ObjectDataSource1.DataBind();
        GridView1.DataBind();
        lblMaHopDong.Text = _MaHD;
    }
    public string maHD
    {
        get
        {
            return _MaHD;
        }
        set
        {
            _MaHD = value;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DateTime dateNgayThu = DateTime.Parse(txtNgayThu.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        string NgayThu = string.Format("{0:MM/dd/yyyy}", dateNgayThu);
        TableThuKH tblThu = new TableThuKH();
        tblThu.update_thu(
                txtMaThu.Text.Trim(),
                NgayThu,
                txtSoTienThu.Text.Replace(".", "").Replace(",", "."),
                txtDotThanhToan.Text.Trim(),
                ddlHinhThucThanhToan.SelectedValue,
                txtNguoiNhan.Text.Trim(),
                lblMaHoaDon.Text,
                lblSerialNo.Text
            );
        pnlCreateThu.Visible = false;
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        FormView1.Visible = false;
    }

    protected void lnkUpdate_Click(object sender, EventArgs e)
    {
        pnlCreateThu.Visible = true;
        FormView1.Visible = false;
        lblSerialNo.Text = ((LinkButton)sender).CommandName;
        lblMaHoaDon.Text = ((LinkButton)sender).CommandArgument;
        txtMaThu.Text = "";
        txtNgayThu.Text = "";
        txtSoTienThu.Text = "";
        txtDotThanhToan.Text = "";
        ddlHinhThucThanhToan.SelectedIndex = 0;
        txtNguoiNhan.Text = "";
    }

    protected void lnkSelect_Click(object sender, EventArgs e)
    {
        pnlCreateThu.Visible = false;
        FormView1.Visible = true;
        ObjectDataSource2.SelectParameters["SerialNo"].DefaultValue = ((LinkButton)sender).CommandName;
        ObjectDataSource2.SelectParameters["MaHoaDon"].DefaultValue = ((LinkButton)sender).CommandArgument;
        ObjectDataSource2.DataBind();
        ((Label)FormView1.FindControl("lblMaHopDong")).Text = _MaHD;
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        
    }
}