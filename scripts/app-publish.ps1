# Variables
$projectPath = "src/MyWebApp/MyWebApp.csproj"
$outputPath = "publish"

# Publish the .NET application
dotnet publish $projectPath -c Release -o $outputPath
