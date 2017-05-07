using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_ThemHopDongRa : System.Web.UI.UserControl
{
    protected static string _MaHD;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    private void Page_PreRender(object sender, System.EventArgs e)
    {
        lblMaHD.Text = _MaHD;
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
        TableHopDongRa tblHopDongRa = new TableHopDongRa();
        DateTime dateNgayXuat = DateTime.Parse(txtNgayXuat.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        string NgayXuat = string.Format("{0:MM/dd/yyyy}", dateNgayXuat);
        tblHopDongRa.insert_hopdongra(
                lblMaHD.Text,
                NgayXuat,
                txtNguoiGiao.Text.Trim(),
                txtNguoiNhan.Text.Trim()
            );
        Response.Redirect(Request.Url.PathAndQuery);
    }
}