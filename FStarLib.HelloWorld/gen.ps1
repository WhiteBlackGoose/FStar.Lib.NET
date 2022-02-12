
fstar HelloWorld.fst --codegen FSharp --odir ./codegen

Write-Host "Code generated to ./codegen"

$fsproj = "./codegen/HelloWorld.fsproj"

$xml = @"
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net6.0</TargetFramework>
  </PropertyGroup>

  <ItemGroup>
    <ProjectReference Include="../../FStarLib/FStarLib.fsproj" />
    <Compile Include="HelloWorld.fs" />
  </ItemGroup>

</Project>
"@

$xml | Out-File -FilePath $fsproj
