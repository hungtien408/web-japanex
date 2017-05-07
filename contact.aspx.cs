using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    private JapanexCommon cmd = new JapanexCommon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            sendEmail();
        }
    }
    private void sendEmail()
    {
        string msg = "<h3>JAPANEX: Liên Hệ</h3><br/>";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Message: </b>" + txtMessage.Text.Trim().ToString();
        //cmd.SendMail("smtp.gmail.com", 587, "contactjapanex@gmail.com", "Betterlife020", "contact@japanex.net", "", "Liên Hệ JAPANEX", msg, true);
        cmd.SendMail("mail.japanex.net", 587, "contact@japanex.net", "Betterlife020", "contact@japanex.net", "", "Liên Hệ JAPANEX", msg, false);
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với JAPANEX !')});", true);
        txtMessage.Text = "";
        txtEmail.Text = "";
    }
}