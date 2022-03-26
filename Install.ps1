
$currentUser = ((Get-WmiObject -ClassName Win32_ComputerSystem).Username).Split('\')[1]

Copy-Item ".\Utilities Sites\*" "C:\Users\$currentUser\Desktop\"


Write-Host "Installing 7Zip and Google Chrome..."

$process = (Start-Process -FilePath 'Ninite 7Zip Chrome Installer.exe' -PassThru -Wait)

$process.WaitForExit()

if ($process.ExitCode -eq 0)
    {
        Write-Host "7Zip and Google Chrome installed successfully."
    }
else
    {
        Write-Host "7Zip and Google Chrome exited with code: " $process.ExitCode
    }



Write-Host "Installing Acrobat Reader..."

$process = (Start-Process -FilePath readerdc64_en_xa_cra_install.exe -PassThru -Wait)

$process.WaitForExit()

if ($process.ExitCode -eq 0)
    {
        Write-Host "Acrobat Reader installed successfully."
    }
else
    {
        Write-Host "Acrobat Reader exited with code: " $process.ExitCode
    }



Write-Host "Installing TRaCS..."

$process = (Start-Process -FilePath '.\Tracs\TraCS Florida 11.3.2.msi' -PassThru -Wait)

$process.WaitForExit()

if ($process.ExitCode -eq 0)
    {
        Write-Host "TRaCS installed successfully."
    }
else
    {
        Write-Host "TRaCS exited with code: " $process.ExitCode
    }


 
Write-Host "Installing Google Drive..."

$process = (Start-Process -FilePath 'GoogleDriveSetup.exe' -PassThru -Wait)

$process.WaitForExit()

if ($process.ExitCode -eq 0)
    {
        Write-Host "Google Drive installed successfully."
    }
else
    {
        Write-Host "Google Drive exited with code: " $process.ExitCode
    }



Write-Host "Installing Mocha Mainframe..."

$process = (Start-Process -FilePath '.\Miami Dade County CJIS MainFrame\tn3270.msi' -PassThru -Wait)

$process.WaitForExit()

if ($process.ExitCode -eq 0)
    {
        Write-Host "Mocha Mainframe installed successfully."
    }
else
    {
        Write-Host "Mocha Mainframe exited with code: " $process.ExitCode
    }


