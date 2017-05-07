using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uc_SuaHopDongVao : System.Web.UI.UserControl
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
        string NgayNhan = ((TextBox)FormView1.FindControl("txtNgayNhan")).Text.Trim();
        string NguoiNhan = ((TextBox)FormView1.FindControl("txtNguoiNhan")).Text.Trim();
        TableHopDongVao tblHopDongVao = new TableHopDongVao();
        DateTime dateNgayNhan = DateTime.Parse(NgayNhan.Trim(), System.Globalization.CultureInfo.CreateSpecificCulture("vi-VN"));
        NgayNhan = string.Format("{0:MM/dd/yyyy}", dateNgayNhan);
        tblHopDongVao.update_hopdongvao(
                _MaHD,
                NguoiNhan,
                NgayNhan
            );
        Response.Redirect(Request.Url.PathAndQuery);
    }
}