Import-Module ActiveDirectory

# Import users from CSV
$users = Import-Csv "C:\Path\To\users.csv"

foreach ($user in $users) {
    $Name = "$($user.FirstName) $($user.LastName)"
    $UPN = $user.UserPrincipalName
    $SamAccountName = $user.SamAccountName
    $Password = ConvertTo-SecureString $user.Password -AsPlainText -Force
    $OU = $user.OU

    # Create new user in AD
    New-ADUser -Name $Name `
               -GivenName $user.FirstName `
               -Surname $user.LastName `
               -UserPrincipalName $UPN `
               -SamAccountName $SamAccountName `
               -Path $OU `
               -AccountPassword $Password `
               -Enabled $true
    Write-Host "Created user: $Name"
}
