echo A, B, C

dotnet publish .\src\ConsoleApp31\ -c Release -r win-x64 -o artifacts\A\ConsoleApp31 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 
dotnet publish .\src\ConsoleApp50\ -c Release -r win-x64 -o artifacts\A\ConsoleApp50 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 
dotnet publish .\src\ConsoleApp60\ -c Release -r win-x64 -o artifacts\A\ConsoleApp60 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 

dotnet publish .\src\ConsoleApp31\ -c Release -r win-x64 -o artifacts\B\ConsoleApp31 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false
dotnet publish .\src\ConsoleApp50\ -c Release -r win-x64 -o artifacts\B\ConsoleApp50 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false
dotnet publish .\src\ConsoleApp60\ -c Release -r win-x64 -o artifacts\B\ConsoleApp60 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false

dotnet publish .\src\ConsoleApp31\ -c Release -r win-x64 -o artifacts\C\ConsoleApp31 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true
dotnet publish .\src\ConsoleApp50\ -c Release -r win-x64 -o artifacts\C\ConsoleApp50 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true
dotnet publish .\src\ConsoleApp60\ -c Release -r win-x64 -o artifacts\C\ConsoleApp60 --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true

pause
