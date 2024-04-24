## replace <text> with the appropriate values
## check for line-of-sight to print server

$Ping = ping "<print_server_FQDN>"
$Present = $false
if ( $Ping -like "*<IP_address_of_print_server>*" ) { $Present = $true }

## check user's PC for the presence of the printers
## add or subtract as needed
## use matching FQDN(s) in the detection script as well as the remediation script

$PrinterNames = Get-Printer | ForEach-Object {$_.Name}
$Printer1 = $PrinterNames -contains "\\<print_server>.<domain>.local\<printer_dns_name>"
$Printer2 = $PrinterNames -contains "\\<print_server>.<domain>.local\<printer_dns_name>"
$Printer3 = $PrinterNames -contains "\\<print_server>.<domain>.local\<printer_dns_name>"
$Printer4 = $PrinterNames -contains "\\<print_server>.<domain>.local\<printer_dns_name>"

## execute if printers are not found AND device has line-of-sight to print server

if( $Printer1 -and $Printer2 -and $Printer3 -and $Printer4 ) {
    Write-Output "Found all printers"
    exit 0
} elseif ( $Present -eq $false ) {
    Write-Output "No line-of-sight"
    exit 0
} else {
    exit 1
}