Import-Module ActiveDirectory

# Import users from CSV
$users = Import-Csv "C:\Path\To\modify_users.csv"

foreach ($user in $users) {
    Set-ADUser -Identity $user.SamAccountName `
               -Title $user.Title `
               -Department $user.Department `
               -OfficePhone $user.PhoneNumber
    Write-Host "Modified user: $($user.SamAccountName)"
}
