echo N,O,P

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\N\ConsoleApp --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\O\ConsoleApp --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\P\ConsoleApp --self-contained true -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true

pause
