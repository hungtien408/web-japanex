using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class uc_DateTime : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getData();
        }
    }
    public string SelectedHour
    {
        get
        {
            return ddlHours.SelectedValue;
        }
    }
    public string SelectedMinute
    {
        get
        {
            return ddlMinutes.SelectedValue;
        }
    }
    public string SelectedDay
    {
        get
        {
            return ddlDays.SelectedValue;
        }
    }
    public string SelectedMonth
    {
        get
        {
            return ddlMonths.SelectedValue;
        }
    }
    public string SelectedYear
    {
        get
        {
            return ddlYears.SelectedValue;
        }
    }
    public void getData()
    {
        for (int h = 0; h <= 23; h++)
        {
            ddlHours.Items.Add(h.ToString());
            ddlHours.Items[h].Value = h.ToString();
        }
        for (int m = 0; m < 60; m++)
        {
            ddlMinutes.Items.Add((m + 1).ToString());
            ddlMinutes.Items[m].Value = (m + 1).ToString();
        }
        for (int g = 0; g < 31; g++)
        {
            ddlDays.Items.Add((g + 1).ToString());
            ddlDays.Items[g].Value = (g + 1).ToString();
        }
        for (int mt = 0; mt < 12; mt++)
        {
            ddlMonths.Items.Add((mt + 1).ToString());
            ddlMonths.Items[mt].Value = (mt + 1).ToString();
        }
        for (int y = 0; y < 10; y++)
        {
            ddlYears.Items.Add((y + 2008).ToString());
            ddlYears.Items[y].Value = (y + 2008).ToString();
        }
        ddlHours.SelectedValue = DateTime.Now.Hour.ToString();
        ddlMinutes.SelectedValue = DateTime.Now.Minute.ToString();
        ddlDays.SelectedValue = DateTime.Now.Day.ToString();
        ddlMonths.SelectedValue = DateTime.Now.Month.ToString();
        ddlYears.SelectedValue = DateTime.Now.Year.ToString();
    }
}
