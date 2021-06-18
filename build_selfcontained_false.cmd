echo A, B, C

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\A\ConsoleApp --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 
dotnet publish .\src\BlazorServer\ -c Release -r win-x64 -o artifacts\A\BlazorServer --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\B\ConsoleApp --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false
dotnet publish .\src\BlazorServer\ -c Release -r win-x64 -o artifacts\B\BlazorServer --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=false

dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\C\ConsoleApp --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true
dotnet publish .\src\BlazorServer\ -c Release -r win-x64 -o artifacts\C\BlazorServer --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -p:IncludeAllContentForSelfExtract=true

pause
