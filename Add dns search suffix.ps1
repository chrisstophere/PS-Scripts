$strComputerName = "ICF2102802"
$psCredentials = Get-Credential
$aryDNSSuffixes = "mythum.lan", "olson.local", "icfi.com", "icfconsulting.com", "icf-hq.icfconsulting.com", "icfi.icfconsulting.com", "mtvsnet.com"                            

invoke-wmimethod -Class win32_networkadapterconfiguration -Name setDNSSuffixSearchOrder -Credential $psCredentials -ComputerName $strComputerName -ArgumentList @($aryDNSSuffixes), $null