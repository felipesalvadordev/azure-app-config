using Microsoft.Extensions.Configuration;

namespace AppConfigurationConsole
{
    class Program
    {
        private static readonly string _connectionString = "Endpoint=https://app-config-westus2.azconfig.io;Id=U4Lk-l2-s0:7KZVZSGFcCMSBvbE24Vd;Secret=wJ2eurHVGTb4eNNQvlJg9rUSFPPVGYdEUY2YT03xMiY=";
        static void Main(string[] args)
        {
            var config = new ConfigurationBuilder()
                            .AddAzureAppConfiguration(_connectionString)
                            .Build();

            Console.WriteLine(config["my-key"]);
        }
    }
}
