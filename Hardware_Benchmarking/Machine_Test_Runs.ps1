Clear-Host

$row_sizes =@(1E3 5E3 1E4 5E4 1E5 5E5 1E6)

ForEach ($r in $row_sizes) {    
	Write-Host "$r"
	Invoke-Expression "& Rscript `"Machine_Test_Script.R`" $r /run /exit"
	
	Write-Host "$r"
	Invoke-Expression "& python `"Machine_Test_Script.py`" $r /run /exit"
}

Write-Host "Successfully finished runs!"
