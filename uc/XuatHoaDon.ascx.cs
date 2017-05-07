using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_XuatHoaDon : System.Web.UI.UserControl
{
    protected static string _MaHD, _MaKH;
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
    public string maKH
    {
        get
        {
            return _MaKH;
        }
        set
        {
            _MaKH = value;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DateTime dateNgayXuatHoaDon = DateTime.Parse(txtNgayXuatHoaDon.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        string NgayXuatHoaDon = string.Format("{0:MM/dd/yyyy}", dateNgayXuatHoaDon);
        TableXuatHoaDon tblXHD = new TableXuatHoaDon();
        tblXHD.insert_xuathoadon_ao(
            _MaHD,
            _MaKH,
            NgayXuatHoaDon
        );
        txtNgayXuatHoaDon.Text = "";
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string SerialNo = ((HiddenField)FormView1.FindControl("hdnSerialNo")).Value;
        string MaHoaDon = ((HiddenField)FormView1.FindControl("hdnMaHoaDon")).Value;
        string SerialNoMoi = ((TextBox)FormView1.FindControl("txtSerialNo")).Text;
        string MaHoaDonMoi = ((TextBox)FormView1.FindControl("txtMaHoaDon")).Text;
        string NguoiVietHoaDon = ((TextBox)FormView1.FindControl("txtNguoiVietHoaDon")).Text;
        string NguoiGiaoHoaDon = ((TextBox)FormView1.FindControl("txtNguoiGiaoHoaDon")).Text;
        string NguoiNhanHoaDon = ((TextBox)FormView1.FindControl("txtNguoiNhanHoaDon")).Text;
        string NgayXuatHoaDon = ((TextBox)FormView1.FindControl("txtNgayXuatHoaDon")).Text;
        string USD = ((TextBox)FormView1.FindControl("txtUSD")).Text.Replace(".", "").Replace(",", ".");
        string TyGia = ((TextBox)FormView1.FindControl("txtTyGia")).Text.Replace(".", "").Replace(",", ".");
        string VND = ((TextBox)FormView1.FindControl("txtVND")).Text.Replace(".", "").Replace(",", ".");
        DateTime dateNgayXuatHoaDon = DateTime.Parse(NgayXuatHoaDon.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        NgayXuatHoaDon = string.Format("{0:MM/dd/yyyy}", dateNgayXuatHoaDon);
        TableXuatHoaDon tblXHD = new TableXuatHoaDon();
        tblXHD.update_xuathoadon(
            SerialNoMoi,
            MaHoaDonMoi,
            SerialNo,
            MaHoaDon,
            NguoiVietHoaDon,
            NguoiGiaoHoaDon,
            NguoiNhanHoaDon,
            NgayXuatHoaDon,
            USD,
            TyGia,
            VND
        );
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        pnlCreateXHD.Visible = true;
        FormView1.Visible = false;
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        pnlCreateXHD.Visible = false;
        FormView1.Visible = true;
        ObjectDataSource2.SelectParameters["SerialNo"].DefaultValue = GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
        ObjectDataSource2.SelectParameters["MaHoaDon"].DefaultValue = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
        ObjectDataSource2.DataBind();
    }
}