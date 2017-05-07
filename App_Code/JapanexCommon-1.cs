using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JapanexCommon
/// </summary>
public class JapanexCommon1
{
    string connectionString = ConfigurationManager.ConnectionStrings["JapanexDBConnectionString"].ConnectionString;
    string connectionString2 = ConfigurationManager.ConnectionStrings["BuybidJPConnectionString"].ConnectionString;
    public DataTable NationSelectAll()
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("Select * From je_Nations n Where n.Enable = 1 Order By NumOr", scon);
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
            var cmd = new SqlCommand("Select * From je_Transporters t Where t.Enable = 1", scon);
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
            var cmd = new SqlCommand("Select * From je_Insurances Order By Id DESC", scon);
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
            var cmd = new SqlCommand("Select * From cms_ExchangeRate Order By CreateDate DESC", scon);
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable PriceTransporterSelectByKg(double kg, int ctvc)
    {
        try
        {
            var dt = new DataTable();
            var scon = new SqlConnection(connectionString);
            var cmd = new SqlCommand("Select * From je_PriceTransporters n left join  je_Weights w On n.WeightsId = w.Id left join je_Transporters t On n.TransId = t.Id Where w.Value >= " + kg + " and t.Id = " + ctvc + " Order By w.Value", scon);
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
            var cmd = new SqlCommand("Select * From je_Clearances c Where c.Weight <= " + kg + " Order By c.Weight", scon);
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
            var cmd = new SqlCommand("Select * From cms_ExchangeRate e Where e.CreateDate <= '" + datecheck + "' Order By e.CreateDate Desc", scon);
            var sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}