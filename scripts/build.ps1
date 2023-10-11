$directoryPath = $env:WORKAREA + "\build"

if (Test-Path -Path $directoryPath -PathType Container) {
    Remove-Item -Path $directoryPath -Recurse
}

New-Item -Path $directoryPath -ItemType Directory

C:\Xilinx\Vivado\2019.1\bin\vivado.bat -mode batch -source .\build_project.tcl