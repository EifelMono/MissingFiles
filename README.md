# MissingFiles

## Description
The following publishing command does not include *.ico and *.font files from the source Resources folder to the artifacts Resource folder

## Command
dotnet publish .\src\ConsoleApp\ -c Release -r win-x64 -o artifacts\A\ConsoleApp --self-contained false -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true 

## Output Resource folder

[Artifacts](https://github.com/EifelMono/MissingFiles/tree/main/artifacts/A/ConsoleApp/Resources)

## Source Resource folder
[Source](https://github.com/EifelMono/MissingFiles/tree/main/src/ConsoleApp/Resources)
