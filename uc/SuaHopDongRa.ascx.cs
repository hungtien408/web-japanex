using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_SuaHopDongRa : System.Web.UI.UserControl
{
    protected static string _MaHD;
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
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string NgayXuat = ((TextBox)FormView1.FindControl("txtNgayXuat")).Text.Trim();
        string NguoiGiao = ((TextBox)FormView1.FindControl("txtNguoiGiao")).Text.Trim();
        string NguoiNhan = ((TextBox)FormView1.FindControl("txtNguoiNhan")).Text.Trim();
        TableHopDongRa tblHopDongRa = new TableHopDongRa();
        DateTime dateNgayXuat = DateTime.Parse(NgayXuat, System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        NgayXuat = string.Format("{0:MM/dd/yyyy}", dateNgayXuat);
        tblHopDongRa.update_hopdongra(
                _MaHD,
                NgayXuat,
                NguoiGiao,
                NguoiNhan
            );
        Response.Redirect(Request.Url.PathAndQuery);
    }
}