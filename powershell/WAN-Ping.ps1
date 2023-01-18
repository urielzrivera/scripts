$names=Get-Content "path\to\filename.txt"
foreach($name in $names){
if(Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
Write-Host "$name is active." -ForegroundColor Green
$output+="$name is active."+" "
}
else{
Write-Host "$name is down." -ForegroundColor Red
$output+="$name is down."+" "
}
}
$output+="$name is down."+" "
$output | Out-File "path\to\filename.txt"
Start-Sleep -s 15
