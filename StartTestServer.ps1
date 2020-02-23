Get-Process -Name System.Net.Http.DotNetty.TestServer | Stop-Process

dotnet publish -c "Release" -f netcoreapp3.1 -o .\bin\TestServer .\tests\System.Net.Http.DotNetty.TestServer\System.Net.Http.DotNetty.TestServer.csproj 

Start-Process -WorkingDirectory .\bin\TestServer\ .\bin\TestServer\System.Net.Http.DotNetty.TestServer.exe