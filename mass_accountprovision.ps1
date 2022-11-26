$TEMP_PASSWORD = "Homelab2022"
$USER_FIRST_LAST_LIST = Get-Content . \users.txt

$password = ConvertTo-SecureString $USERS_PASSWORD -AsPlainText -Force New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $true

foreach ($n in USER_FIRST_LAST_LIST) {
  $first = $n.split(" ")[0].ToLower()
  $last = $n.splpit(" ")[1].ToLower()
  $username = $first.Substring(0,1)$($last)".ToLower()
  Write-Host "Creating User: ($username)" -BackgroundColor Black -ForegroundColor Cyan
  
  New-AdUser -AccountPassword $password '
             -GivenName $first  '
             -Surname $last '
             -DisplayName $username '
             -Name $username  '
             -EmployeeID $username  '
             -PasswordNeverExpires $true '
             -Path "ou=USERS,$(([ADSI]'"").distinguishedName)" '
}
