using System;
using ServiceStack;
using ServiceStack.Client;

namespace client
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            var client = new JsonServiceClient("http://127.0.0.1:8080");

            HelloResponse response = client.Get<HelloResponse>(new HelloRequest() { Name = "iPhone" });
            //resultLabel.Text = response.Result;

            Console.WriteLine(response.Result.ToString());
        }
    }
}
