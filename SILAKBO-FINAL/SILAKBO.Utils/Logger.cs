using System;
using System.Collections.Generic;
using System.Text;
using System;
using System.IO;

namespace SILAKBO_FINAL.SILAKBO.Utils
{
    public static class Logger
    {
        private static string logFile = "log.txt";

        public static void Log(Exception ex)
        {
            using (var writer = new StreamWriter(logFile, true))
            {
                writer.WriteLine($"[{DateTime.Now}] ERROR:");
                writer.WriteLine(ex.Message);
                writer.WriteLine(ex.StackTrace);
                writer.WriteLine("--------------------------------------------------");
            }
        }
    }
}


