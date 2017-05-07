using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private JapanexCommon cmd = new JapanexCommon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Japanex";
            var meta = new HtmlMeta() { Name = "description", Content = "Japanex" };
            Header.Controls.Add(meta);
        }
    }
    protected void txtSoKg_TextChanged(object sender, EventArgs e)
    {
        int gtdh = !string.IsNullOrEmpty(txtGiaTriDonHang.Text) ? Convert.ToInt32(txtGiaTriDonHang.Text) : 0;
        int fee = Estimate(Convert.ToDouble(txtSoKg.Text), Convert.ToInt32(dropVanChuyen.SelectedValue), gtdh);

        lblMoneyJP.Text = (string.Format("{0:##,###.##}", fee) + " JPY");
        lblMoneyVN.Text = ("(" + string.Format("{0:##,###.##}", fee * Convert.ToDouble(Session["Exrate"].ToString())) + " VNĐ)");
    }
    protected void dropVanChuyen_SelectedIndexChanged(object sender, EventArgs e)
    {
        int gtdh = !string.IsNullOrEmpty(txtGiaTriDonHang.Text) ? Convert.ToInt32(txtGiaTriDonHang.Text) : 0;
        int fee = Estimate(Convert.ToDouble(txtSoKg.Text), Convert.ToInt32(dropVanChuyen.SelectedValue), gtdh);

        lblMoneyJP.Text = (string.Format("{0:##,###.##}", fee) + " JPY");
        lblMoneyVN.Text = ("(" + string.Format("{0:##,###.##}", fee * Convert.ToDouble(Session["Exrate"].ToString())) + " VNĐ)");
    }

    public int Estimate(double kg, int ctvc, int gtdh)
    {
        int pvc = 0;
        int ptq = 0;

        var vc = cmd.PriceTransporterSelectByKg(kg, ctvc.ToString()).DefaultView;

        if (vc != null)
        {
            pvc = Convert.ToInt32(vc[0]["Price"].ToString());
        }

        var tq = cmd.ClearanceSelectByKg(Convert.ToDouble(txtSoKg.Text)).DefaultView;

        if (tq != null)
        {
            ptq = Convert.ToInt32(tq[0]["Fee"].ToString());
        }

        var bh = cmd.InsuranceSelectAll().DefaultView;

        int pbh = 0;
        int hs = 0;
        //int gtdh = !string.IsNullOrEmpty(txtGiaTriDonHang.Text) ? Convert.ToInt32(txtGiaTriDonHang.Text) : 0;

        if (bh != null)
        {
            if (gtdh > Convert.ToInt32(bh[0]["MinValue"].ToString()) && Convert.ToInt32(bh[0]["StepValue"].ToString()) > 0)
            {
                hs = (int)gtdh / Convert.ToInt32(bh[0]["StepValue"].ToString());
            }

            pbh = Convert.ToInt32(bh[0]["MinPrice"].ToString()) + (hs * Convert.ToInt32(bh[0]["StepPrice"].ToString()));
        }


        int fee = pvc + ptq + pbh;
        return fee;
    }
    protected void txtGiaTriDonHang_TextChanged(object sender, EventArgs e)
    {
        int gtdh = !string.IsNullOrEmpty(txtGiaTriDonHang.Text) ? Convert.ToInt32(txtGiaTriDonHang.Text) : 0;
        int fee = Estimate(Convert.ToDouble(txtSoKg.Text), Convert.ToInt32(dropVanChuyen.SelectedValue), gtdh);

        lblMoneyJP.Text = (string.Format("{0:##,###.##}", fee) + " JPY");
        lblMoneyVN.Text = ("(" + string.Format("{0:##,###.##}", fee * Convert.ToDouble(Session["Exrate"].ToString())) + " VNĐ)");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //if (CheckBox1.Checked)
        //{
        //    Panel1.Visible = true;
        //}
        //else
        //{
        //    Panel1.Visible = false;
        //}
    }
    [WebMethod]
    public static string LoadData(string SoKg, string GTDH, string VanChuyen)
    {
        JapanexCommon cmd = new JapanexCommon();
        int pvc = 0;
        int ptq = 0;
        int gtdh = 0;

        if(!string.IsNullOrEmpty(GTDH)) 
        {
            gtdh = Convert.ToInt32(GTDH.Replace(",",""));
        }
        else
        {
             gtdh = 0;
        }

        var vc = cmd.PriceTransporterSelectByKg(Convert.ToDouble(SoKg), VanChuyen).DefaultView;

        if (vc != null)
        {
            pvc = Convert.ToInt32(vc[0]["Price"].ToString());
        }

        var tq = cmd.ClearanceSelectByKg(Convert.ToDouble(SoKg)).DefaultView;

        if (tq != null)
        {
            ptq = Convert.ToInt32(tq[0]["Fee"].ToString());
        }

        var bh = cmd.InsuranceSelectAll().DefaultView;

        int pbh = 0;
        int hs = 0;
        //int gtdh = !string.IsNullOrEmpty(txtGiaTriDonHang.Text) ? Convert.ToInt32(txtGiaTriDonHang.Text) : 0;

        if (bh != null)
        {
            if (gtdh > Convert.ToInt32(bh[0]["MinValue"].ToString()) && Convert.ToInt32(bh[0]["StepValue"].ToString()) > 0)
            {
                hs = (int)gtdh / Convert.ToInt32(bh[0]["StepValue"].ToString());
            }

            pbh = Convert.ToInt32(bh[0]["MinPrice"].ToString()) + (hs * Convert.ToInt32(bh[0]["StepPrice"].ToString()));
        }


        int fee = pvc + ptq + pbh;
        return fee.ToString();
    }
}