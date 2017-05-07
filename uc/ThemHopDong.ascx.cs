using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_ThemHopDong : System.Web.UI.UserControl
{
    private static string _MaKH;
    protected void Page_Load(object sender, EventArgs e)
    {
        
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
    protected void lnkMHD_Click(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        TableHopDong tblHopDong = new TableHopDong();
        DateTime dateNgayBatDau = DateTime.Parse(txtNgayBatDau.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        DateTime dateNgayKetThuc = DateTime.Parse(txtNgayKetThuc.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        DateTime dateNgayTaiKy = DateTime.Parse(txtNgayTaiKy.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        string NgayBatDau = string.Format("{0:MM/dd/yyyy}", dateNgayBatDau);
        string NgayKetThuc = string.Format("{0:MM/dd/yyyy}", dateNgayKetThuc);
        string NgayTaiKy = string.Format("{0:MM/dd/yyyy}", dateNgayTaiKy);
        tblHopDong.insert_hopdong(
                txtMaHD.Text.Trim(),
                _MaKH,
                txtThoiHan.Text.Trim().Replace(",", "."),
                NgayBatDau,
                NgayKetThuc,
                NgayTaiKy,
                txtNguoiLapHD.Text.Trim(),
                txtTongDotTT.Text.Trim(),
                txtNhanVienKy.Text.Trim(),
                txtLoaiHD.Text.Trim(),
                txtHoaHong.Text.Trim(),
                txtGhiChu.Text.Trim(),
                txtGiaTriHD.Text.Replace(".", "").Replace(",", "."),
                txtGiaTriHDVND.Text.Replace(".", "").Replace(",", "."),
                txtTyGia.Text.Replace(".", "").Replace(",", ".")
            );
        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void btnNewMHD_Click(object sender, EventArgs e)
    {

    }
}