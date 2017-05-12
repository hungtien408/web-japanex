using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    private JapanexCommon cmd = new JapanexCommon();
    protected void Page_Load(object sender, EventArgs e)
    {
        var ehvm = cmd.ExchangeRateSelectAll().DefaultView;
        var round = Convert.ToDouble(ehvm[0]["Value"].ToString()) * (1 + (Convert.ToInt32(ehvm[0]["Coefficient"].ToString()) / 100.0));
        double exrate = Math.Ceiling(round);

        Session["Exrate"] = exrate;

    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            sendEmail();
        }
    }
    private void sendEmail()
    {
        string msg = "<h3>JAPANEX: Đăng ký nhận thông tin qua Email</h3><br/>";
        msg += "<b>Email: </b>" + txtNhanEmail.Text.Trim().ToString() + "<br />";
        //if (ConfigurationManager.AppSettings["PasswordMail"] != null && ConfigurationManager.AppSettings["UserMail"] != null)
        //{
        //    string UserMail = ConfigurationManager.AppSettings["UserMail"].ToString();
        //    string PasswordMail = ConfigurationManager.AppSettings["PasswordMail"].ToString();
        //    if (!string.IsNullOrEmpty(UserMail) && !string.IsNullOrEmpty(PasswordMail))
        //    {
        //        //cmd.SendMail("mail.japanex.net", 587, "contact@japanex.net", "Betterlife020", "contact@japanex.net", "", "Đăng ký nhận thông tin qua Email JAPANEX", msg, false);
        //        cmd.SendMail("mail.japanex.net", 587, UserMail, PasswordMail, UserMail, "", "Đăng ký nhận thông tin qua Email JAPANEX", msg, false);
        //        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã Đăng ký nhận thông tin qua Email JAPANEX !')});", true);
        //        txtNhanEmail.Text = "";
        //    }
        //}

        cmd.SendMail("mail.japanex.net", 587, "contact@japanex.net", "Betterlife020", "contact@japanex.net", "", "Đăng ký nhận thông tin qua Email JAPANEX", msg, false);
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã Đăng ký nhận thông tin qua Email JAPANEX !')});", true);
        txtNhanEmail.Text = "";
    }
}
