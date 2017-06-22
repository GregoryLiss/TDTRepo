$error.clear()
$Toad = $NULL
try 
{
	$Toad = New-Object -ComObject Toad.ToadAutoObject
	$SourceFolder = $ENV:WORKSPACE + '/source'
	$OutputFolder = $ENV:WORKSPACE + '/output'
	If(!(test-path $OutputFolder))
	{
		New-Item -ItemType Directory -Force -Path $OutputFolder
	}
	$ConnectStr = $env:OracleUser + '/' + $env:OraclePassword + '@toadorabpc11gr2.eastus.cloudapp.azure.com:1521/ORABPC11GR2.eastus.cloudapp.azure.com'

	Write-Host $ConnectStr

	if ($Toad)
	{
		Write-Host 'Toad Exists' 
		if ($Toad.Connections)
		{
			Write-Host 'Connections exists'
			$NewConnection = $Toad.Connections.Connect($ConnectStr)
			if ($NewConnection)
			{
				Write-Host 'Has new connection'
				#iterate through working source folders

				$Toad.CodeAnalysis.Connection    = $NewConnection 
				$Toad.CodeAnalysis.ReportName    = "CodeAnalysis"
				$Toad.CodeAnalysis.ReportFormats.IncludeHTML = $TRUE;
				$Toad.CodeAnalysis.ReportFormats.IncludeJSON = $TRUE;
				$Toad.CodeAnalysis.RuleSet       = 0  
				$Toad.CodeAnalysis.OutputFolder  = $OutputFolder
				#iterate through working source folders
				Get-ChildItem "c:\DemoWorkspace\source" -Filter *.fnc -Recurse | % { 
					$Toad.CodeAnalysis.Files.Add($_.FullName) 
				}  
				Write-Host 'Added Files'
				$Toad.CodeAnalysis.Execute()    
				Write-Host 'Executed CA'              
			}
			else
			{
				Write-Error 'Connection Failed' -ErrorAction:Stop
			}

		}
		else
		{
			Write-Host 'Toad Connections Failed'
		} 
		#$Toad.Debug.FullReport
		$Toad.Quit()
	}
	else
	{
		Write-Host 'Toad Failed'
	} 
} 
catch 
{
	#$Toad.Debug.FullReport
	$Toad.Quit()
	Write-Error $_.Exception.Message -ErrorAction: Stop
}