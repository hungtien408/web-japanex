using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_SuaHopDong : System.Web.UI.UserControl
{
    private static string _MaHD;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void Page_PreRender(object sender, System.EventArgs e)
    {
        ObjectDataSource1.SelectParameters["MaHopDong"].DefaultValue = _MaHD;
        ObjectDataSource1.DataBind();
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string MaHopDongMoi = ((TextBox)FormView1.FindControl("txtMaHD")).Text;
        string MaHopDong = ((Label)FormView1.FindControl("lblMaHopDong")).Text;
        string MaKH = ((HiddenField)FormView1.FindControl("hdnMaKH")).Value;
        string ThoiHan = ((TextBox)FormView1.FindControl("txtThoiHan")).Text.Replace(",", ".");
        string NgayBatDau = ((TextBox)FormView1.FindControl("txtNgayBatDau")).Text;
        string NgayKetThuc = ((TextBox)FormView1.FindControl("txtNgayKetThuc")).Text;
        string NgayTaiKy = ((TextBox)FormView1.FindControl("txtNgayTaiKy")).Text;
        string NguoiLapHopDong = ((TextBox)FormView1.FindControl("txtNguoiLapHD")).Text;
        string TongDotThanhToan = ((TextBox)FormView1.FindControl("txtTongDotTT")).Text;
        string NhanVienKy = ((TextBox)FormView1.FindControl("txtNhanVienKy")).Text;
        string LoaiHopDong = ((TextBox)FormView1.FindControl("txtLoaiHD")).Text;
        string HoaHong = ((TextBox)FormView1.FindControl("txtHoaHong")).Text;
        string GhiChu = ((TextBox)FormView1.FindControl("txtGhiChu")).Text;
        string GiaTriHopDong = ((TextBox)FormView1.FindControl("txtGiaTriHD")).Text.Replace(".", "").Replace(",", ".");
        string GiaTriHopDongVND = ((TextBox)FormView1.FindControl("txtGiaTriHDVND")).Text.Replace(".", "").Replace(",", ".");
        string TyGia = ((TextBox)FormView1.FindControl("txtTyGia")).Text.Replace(".", "").Replace(",", ".");

        DateTime dateNgayBatDau = DateTime.Parse(NgayBatDau, System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        DateTime dateNgayKetThuc = DateTime.Parse(NgayKetThuc, System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        DateTime dateNgayTaiKy = DateTime.Parse(NgayTaiKy, System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        NgayBatDau = string.Format("{0:MM/dd/yyyy}", dateNgayBatDau);
        NgayKetThuc = string.Format("{0:MM/dd/yyyy}", dateNgayKetThuc);
        NgayTaiKy = string.Format("{0:MM/dd/yyyy}", dateNgayTaiKy);

        TableHopDong tblHD = new TableHopDong();
        tblHD.update_hopdong(
                MaHopDongMoi,
                MaHopDong,
                MaKH, ThoiHan,
                NgayBatDau,
                NgayKetThuc,
                NgayTaiKy,
                NguoiLapHopDong,
                TongDotThanhToan,
                NhanVienKy,
                LoaiHopDong,
                HoaHong,
                GhiChu,
                GiaTriHopDong,
                GiaTriHopDongVND,
                TyGia
            );
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {

    }
}