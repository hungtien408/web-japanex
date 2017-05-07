using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for JapanexCommon
/// </summary>
public class JapanexCommon
{
    string connectionString = ConfigurationManager.ConnectionStrings["JapanexDBConnectionString"].ConnectionString;
    string connectionString2 = ConfigurationManager.ConnectionStrings["BuybidJPConnectionString"].ConnectionString;
    DBNull dbNULL = DBNull.Value;
    public DataTable NationSelectAll()
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("usp_Nations_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable TransporterSelectAll()
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("usp_Transporters_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable InsuranceSelectAll()
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("usp_Insurances_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable ExchangeRateSelectAll()
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString2);
            var cmd = new SqlCommand("usp_ExchangeRate_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable PriceTransporterSelectByKg(double kg, string ctvc)
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("usp_PriceTransporters_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Weight", string.IsNullOrEmpty(kg.ToString()) ? dbNULL : (object)kg);
            cmd.Parameters.AddWithValue("@TransId", string.IsNullOrEmpty(ctvc.ToString()) ? dbNULL : (object)ctvc);

            SqlParameter errorCodeParam = new SqlParameter("@ErrorCode", null);
            errorCodeParam.Size = 4;
            errorCodeParam.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(errorCodeParam);
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable ClearanceSelectByKg(double kg)
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("usp_Clearances_SelectAll", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Weight", string.IsNullOrEmpty(kg.ToString()) ? dbNULL : (object)kg);

            SqlParameter errorCodeParam = new SqlParameter("@ErrorCode", null);
            errorCodeParam.Size = 4;
            errorCodeParam.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(errorCodeParam);
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable checkExrate(string datecheck)
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString2);
            var cmd = new SqlCommand("usp_ExchangeRate_CheckRate", scon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CreateDate", string.IsNullOrEmpty(datecheck) ? dbNULL : (object)datecheck);

            SqlParameter errorCodeParam = new SqlParameter("@ErrorCode", null);
            errorCodeParam.Size = 4;
            errorCodeParam.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(errorCodeParam);
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public bool SendMail(string strHost, int iPort, string strMailFrom, string strPassword, string strMailTo, string strCC, string strSubject, string strBody, bool bEnableSsl)
    {
        bool SendSuccess = false;
        try
        {
            var lstMailTo = strMailTo.Replace(';', ',').Split(',');
            var lstCC = strCC.Replace(';', ',').Split(',');

            NetworkCredential loginInfo = new NetworkCredential(strMailFrom, strPassword);
            SmtpClient client = new SmtpClient(strHost, iPort);
            client.EnableSsl = false;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.EnableSsl = bEnableSsl;
            using (MailMessage msg = new MailMessage())
            {
                msg.From = new MailAddress(strMailFrom);

                foreach (string strTo in lstMailTo)
                    if (!string.IsNullOrEmpty(strTo.Trim()))
                        msg.To.Add(new MailAddress(strTo));

                foreach (string strCC1 in lstCC)
                    if (!string.IsNullOrEmpty(strCC1.Trim()))
                        msg.CC.Add(new MailAddress(strCC1));

                msg.Subject = strSubject;
                msg.Body = strBody;
                msg.IsBodyHtml = true;
                client.Send(msg);
            }
            SendSuccess = true;
        }
        catch
        {
            SendSuccess = false;
        }
        return SendSuccess;
    }

    public bool SendMail(string strHost, int iPort, string strMailFrom, string strUserName, string strPassword, string strMailTo, string strCC, string strSubject, string strBody, bool bEnableSsl)
    {
        bool SendSuccess = false;
        try
        {
            var lstMailTo = strMailTo.Replace(';', ',').Split(',');
            var lstCC = strCC.Replace(';', ',').Split(',');

            NetworkCredential loginInfo = new NetworkCredential(strUserName, strPassword);
            SmtpClient client = new SmtpClient(strHost, iPort);
            client.EnableSsl = false;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.EnableSsl = bEnableSsl;
            using (MailMessage msg = new MailMessage())
            {
                msg.From = new MailAddress(strMailFrom);

                foreach (string strTo in lstMailTo)
                    if (!string.IsNullOrEmpty(strTo.Trim()))
                        msg.To.Add(new MailAddress(strTo));

                foreach (string strCC1 in lstCC)
                    if (!string.IsNullOrEmpty(strCC1.Trim()))
                        msg.CC.Add(new MailAddress(strCC1));

                msg.Subject = strSubject;
                msg.Body = strBody;
                msg.IsBodyHtml = true;
                client.Send(msg);
            }
            SendSuccess = true;
        }
        catch
        {
            SendSuccess = false;
        }
        return SendSuccess;
    }

    public bool SendMail(string strHost, int iPort, string strMailFrom, string strDisplayName, string strUserName, string strPassword, string strMailTo, string strCC, string strSubject, string strBody, bool bEnableSsl)
    {
        bool SendSuccess = false;
        try
        {
            var lstMailTo = strMailTo.Replace(';', ',').Split(',');
            var lstCC = strCC.Replace(';', ',').Split(',');

            NetworkCredential loginInfo = new NetworkCredential(strUserName, strPassword);
            SmtpClient client = new SmtpClient(strHost, iPort);
            client.EnableSsl = false;
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.EnableSsl = bEnableSsl;
            using (MailMessage msg = new MailMessage())
            {
                msg.From = new MailAddress(strMailFrom, strDisplayName);

                foreach (string strTo in lstMailTo)
                    if (!string.IsNullOrEmpty(strTo.Trim()))
                        msg.To.Add(new MailAddress(strTo));

                foreach (string strCC1 in lstCC)
                    if (!string.IsNullOrEmpty(strCC1.Trim()))
                        msg.CC.Add(new MailAddress(strCC1));

                msg.Subject = strSubject;
                msg.Body = strBody;
                msg.IsBodyHtml = true;
                client.Send(msg);
            }
            SendSuccess = true;
        }
        catch
        {
            SendSuccess = false;
        }
        return SendSuccess;
    }

    public bool SendMail(string strHost, int iPort, string strMailFrom, string strUserName, string strPassword, List<string> lstMailTo, List<string> lstCC, List<string> lstAttachment, string strSubject, string strBody, bool bEnableSsl)
    {
        bool SendSuccess = false;
        try
        {
            var loginInfo = new NetworkCredential(strUserName, strPassword);
            var client = new SmtpClient(strHost, iPort);
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.EnableSsl = bEnableSsl;
            using (MailMessage msg = new MailMessage())
            {
                msg.From = new MailAddress(strMailFrom);

                foreach (string strMailTo in lstMailTo)
                    msg.To.Add(new MailAddress(strMailTo.Trim()));

                if (lstCC != null)
                    foreach (string strCC in lstCC)
                        msg.CC.Add(new MailAddress(strCC));

                if (lstAttachment != null)
                {
                    if (lstAttachment.Count > 0)
                        foreach (string strFileName in lstAttachment)
                            msg.Attachments.Add(new Attachment(strFileName));
                }
                msg.Subject = strSubject;
                msg.Body = strBody;
                msg.IsBodyHtml = true;
                client.Send(msg);
            }
            SendSuccess = true;
        }
        catch (Exception ex)
        {
            SendSuccess = false;
        }
        return SendSuccess;
    }

    public bool SendMail(string strHost, int iPort, string strMailFrom, string strDisplayName, string strUserName, string strPassword, List<string> lstMailTo, List<string> lstCC, List<string> lstAttachment, string strSubject, string strBody, bool bEnableSsl)
    {
        bool SendSuccess = false;
        try
        {
            var loginInfo = new NetworkCredential(strUserName, strPassword);
            var client = new SmtpClient(strHost, iPort);
            client.UseDefaultCredentials = false;
            client.Credentials = loginInfo;
            client.EnableSsl = bEnableSsl;
            using (MailMessage msg = new MailMessage())
            {
                msg.From = new MailAddress(strMailFrom, strDisplayName);

                foreach (string strMailTo in lstMailTo)
                    msg.To.Add(new MailAddress(strMailTo.Trim()));

                if (lstCC != null)
                    foreach (string strCC in lstCC)
                        msg.CC.Add(new MailAddress(strCC));

                if (lstAttachment != null)
                {
                    if (lstAttachment.Count > 0)
                        foreach (string strFileName in lstAttachment)
                            msg.Attachments.Add(new Attachment(strFileName));
                }
                msg.Subject = strSubject;
                msg.Body = strBody;
                msg.IsBodyHtml = true;
                client.Send(msg);
            }
            SendSuccess = true;
        }
        catch (Exception ex)
        {
            SendSuccess = false;
        }
        return SendSuccess;
    }
}