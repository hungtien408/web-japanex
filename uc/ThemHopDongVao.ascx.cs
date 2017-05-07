using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_ThemHopDongVao : System.Web.UI.UserControl
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
        TableHopDongVao tblHopDongVao = new TableHopDongVao();
        DateTime dateNgayNhan = DateTime.Parse(txtNgayNhan.Text.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        string NgayNhan = string.Format("{0:MM/dd/yyyy}", dateNgayNhan);
        tblHopDongVao.insert_hopdongvao(
                _MaHD,
                txtNguoiNhan.Text.Trim(),
                NgayNhan
            );
        Response.Redirect(Request.Url.PathAndQuery);
    }
}