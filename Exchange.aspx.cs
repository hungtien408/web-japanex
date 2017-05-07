using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exchange : System.Web.UI.Page
{
    private JapanexCommon cmd = new JapanexCommon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            var ehvm = cmd.ExchangeRateSelectAll().DefaultView;
            var round = Convert.ToDouble(ehvm[0]["Value"].ToString()) * (1 + (Convert.ToInt32(ehvm[0]["Coefficient"].ToString()) / 100.0));
            double exrate = Math.Ceiling(round);

            dpNgay.SelectedDate = DateTime.Now;
            //lblTyGIa.Text = Session["Exrate"] != null ? Session["Exrate"].ToString() : "";
            lblTyGIa.Text = exrate.ToString();
            lblNgay.Text = string.Format("{0:dd/MM/yyyy}", ehvm[0]["CreateDate"]);//DateTime.Now.ToString("dd/MM/yyyy");
        }
    }
    protected void btnXemTiGia_Click(object sender, EventArgs e)
    {
        if (dpNgay.SelectedDate != null)
        {
            List<string> lst = check(dpNgay.SelectedDate.ToString());
            if (lst != null)
            {
                lblTyGIa.Text = lst[0];
                lblNgay.Text = lst[1];
            }
        }
    }
    public List<string> check(string datecheck)
    {
        double exvalue = 0;
        string exdate = DateTime.Now.ToString("dd/MM/yyyy");
        var ex = cmd.checkExrate(datecheck).DefaultView;

        if (ex != null && ex.Count > 0)
        {
            var round = Convert.ToDouble(ex[0]["Value"].ToString()) * (1 + (Convert.ToInt32(ex[0]["Coefficient"].ToString()) / 100.0));
            double exrate = Math.Ceiling(round);
            exvalue = exrate;
            exdate = string.Format("{0:dd/MM/yyyy}", ex[0]["CreateDate"]);
        }

        List<string> lst = new List<string>();
        lst.Add(exvalue.ToString());
        lst.Add(exdate);

        return lst;
    }
}