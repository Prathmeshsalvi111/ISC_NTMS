$Serverlist = Import-Csv -Path C:\Users\citrixadmin\Desktop\Book1.csv
$patch_no = read-host -Prompt "provide patch no"
write-host "$patch_no check the patch"
if($patch_no -match  "^[K]b\d{7}$")
	{ Write-Host "validating the patch from remote computer"
           foreach($server in $Serverlist.hostname) 
                    {Get-wmiobject -class win32_quickfixengineering -ComputerName $server -ErrorAction SilentlyContinue | Where-Object{$_.HotFixID -match  "$patch_no"}}
                    if($patch_no -match $patch_no)
                        {write-host "patch not available"}
                        else { write-host "patch is available remote matchine"}}
     elseif ($patch_no -match  "^[K]b\d{7}$")
                 { write-host "please provide proper Character" }
                        else { write-host "Wrong input"}
                           