using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace ConsoleApp50
{
    internal static class Program
    {
        private static void Main(string[] args)
        {
            Console.WriteLine($"GetCurrentDirectory\r\n\t{Directory.GetCurrentDirectory()}");
            Console.WriteLine($"AppContext.BaseDirectory\r\n\t{AppContext.BaseDirectory}");
            Console.WriteLine();
            Console.WriteLine($"Environment.GetCommandLineArgs()[0]\r\n\t{Environment.GetCommandLineArgs()[0]}");
            Console.WriteLine($"Assembly.GetExecutingAssembly().Location\r\n\t{Assembly.GetExecutingAssembly().Location}");
            Console.WriteLine();

            IEnumerable<string> files = new List<string>();
            Console.WriteLine("Check on GetCurrentDirectory");
            if (Directory.Exists("Resources"))
            {
                files = Directory.EnumerateFiles("Resources", "*.*", SearchOption.AllDirectories);
                foreach (var file in files)
                    Console.WriteLine(file);
            }
            Console.WriteLine($"Resource files={files.Count()}\r\n");

            Console.WriteLine("Check on AppContext.BaseDirectory");
            if (Directory.Exists($"{AppContext.BaseDirectory}\\Resources"))
            {
                files = Directory.EnumerateFiles($"{AppContext.BaseDirectory}\\Resources", "*.*", SearchOption.AllDirectories);
                foreach (var file in files)
                    Console.WriteLine(file);
            }
            Console.WriteLine($"Resource files={files.Count()}\r\n");

            Console.WriteLine("Ready");
            Console.ReadLine();
        }
    }
}
