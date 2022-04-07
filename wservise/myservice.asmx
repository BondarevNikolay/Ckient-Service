<%@ WebService Language="C#" Class="wservise.myservice" %>
using System;
using System.Web.Services;
using ServiceStack;

namespace wservise
{
    [Route("/hello")]
    [Route("/hello/{Name}")]
    public class HelloRequest
    {
        public string Name { get; set; }
    }
        
    public class HelloResponse 
    {
        public string Result { get; set; }
    }

    public class HelloService : Service
    {
        public object Any(HelloRequest request)
        {
            return new HelloResponse { Result = "Hello, " + request.Name };
        }
    }
    
}