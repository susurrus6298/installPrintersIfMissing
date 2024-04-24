## create shortcuts to printer to install in the user's context
## add or subtract as needed
## replace <text> with the appropriate values
## use matching FQDN(s) in the detection script as well as the remediation script

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut(".\printer_1.lnk")
$Shortcut.TargetPath = "\\<print_server>.<domain>.local\<printer_dns_name>"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut(".\printer_2.lnk")
$Shortcut.TargetPath = "\\<print_server>.<domain>.local\<printer_dns_name>"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut(".\printer_3.lnk")
$Shortcut.TargetPath = "\\<print_server>.<domain>.local\<printer_dns_name>"
$Shortcut.Save()

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut(".\printer_4.lnk")
$Shortcut.TargetPath = "\\<print_server>.<domain>.local\<printer_dns_name>"
$Shortcut.Save()

## install the printers

Invoke-Item -Path ".\printer_1.lnk"
Invoke-Item -Path ".\printer_2.lnk"
Invoke-Item -Path ".\printer_3.lnk"
Invoke-Item -Path ".\printer_4.lnk"