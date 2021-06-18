# MissingFiles

## Description
Depend on the "dotnet publish"  commands or parameters, 
files with the ending "ico" or "font" will not be copied into the artifacts directory.

The following publishing command does not copy *.ico and *.font files from the source Resources folder to the artifacts Resource folder

## Command
dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\A\ConsoleApp --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 

## Source Resource folder

![](https://raw.githubusercontent.com/EifelMono/MissingFiles/main/images/Source%20Resource%20Folder.jpg)

[Source](https://github.com/EifelMono/MissingFiles/tree/main/src/ConsoleApp/Resources)

## Output Resource folder

![](https://raw.githubusercontent.com/EifelMono/MissingFiles/main/images/Artifcats%20A%20Resource%20Folder.jpg)

[Artifacts](https://github.com/EifelMono/MissingFiles/tree/main/artifacts/A/ConsoleApp/Resources)

