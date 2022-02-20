using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Buffers;
using System.Text.Json;
using System.Net;
using System.Text.Unicode;
using System.Text.Encodings.Web;

namespace ApiOption5
{
    class Program
    {
        static void Main()
        {
            HttpListener server = new HttpListener();
            server.Prefixes.Add("http://localhost:09809/");

            JsonSerializerOptions options = new JsonSerializerOptions() { Encoder = JavaScriptEncoder.Create(UnicodeRanges.All) };
            server.Start();
            while(true)
            {
                HttpListenerContext context = server.GetContext*
                if()
            }
        }
    }
}
