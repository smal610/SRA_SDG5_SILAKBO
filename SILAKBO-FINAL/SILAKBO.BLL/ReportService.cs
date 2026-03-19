using SILAKBO_FINAL.SILAKBO.Models;
using System;
using System.Collections.Generic;
using System.Collections.Generic;
using System.Text;

public class ReportService
{
    private ReportRepository repo = new ReportRepository();

    public void SubmitReport(Report report)
    {
        repo.SubmitReport(report);
    }

    public List<Report> GetUserReports(int userId)
    {
        return repo.GetReportsByUser(userId);
    }
}