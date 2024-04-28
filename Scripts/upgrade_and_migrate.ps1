
#### Scripts/upgrade_and_migrate.ps1:

```powershell
# System Upgrade and Migration Script

# Function to perform system upgrade
function Upgrade-System {
    # Your upgrade logic here
    Write-Host "Performing system upgrade..."
    Start-Sleep -Seconds 3
    Write-Host "System upgrade completed successfully!"
}

# Function to perform system migration
function Migrate-System {
    # Your migration logic here
    Write-Host "Performing system migration..."
    Start-Sleep -Seconds 3
    Write-Host "System migration completed successfully!"
}

# Main function to initiate upgrade and migration
function Main {
    # Display welcome message
    Write-Host "Welcome to the System Upgrade and Migration Tool!"
    Write-Host

    # Prompt user for action
    $action = Read-Host "Would you like to perform an upgrade (U) or a migration (M)? [U/M]"

    # Perform selected action
    switch ($action.ToUpper()) {
        "U" {
            Upgrade-System
        }
        "M" {
            Migrate-System
        }
        Default {
            Write-Host "Invalid input. Please select either 'U' for upgrade or 'M' for migration."
        }
    }
}

# Invoke the main function
Main
