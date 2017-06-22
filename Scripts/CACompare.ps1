$fileA = $ENV:WORKSPACE + "\LastBuild\CodeAnalysis.json"
$fileB = $ENV:WORKSPACE + "\output\CodeAnalysis.json"
$fileC = $ENV:WORKSPACE + "\output\CADiffReport.txt"
Compare-Object -referenceObject $(Get-Content $fileA) -differenceObject $(Get-Content $fileB) | %{$_.Inputobject} | ft -auto | out-file $fileC -width 150