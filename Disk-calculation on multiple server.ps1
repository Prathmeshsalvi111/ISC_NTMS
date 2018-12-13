#disk utilization on servers
$diskinfo = Import-Csv -Path C:\Users\citrixadmin\Desktop\Book1.csv
Get-Date | Out-File -FilePath C:\prathmesh\disk.txt -Append
$diskinfo.hostname
foreach( $diskinfos in $diskinfo.hostname )
         {if(Test-Connection -ComputerName $diskinfos -Count 2 -Quiet)
                {"$_ "}
                    else{"$_ connectivity issue on $diskinfos" }
         Get-WmiObject Win32_LogicalDisk -ComputerName $diskinfos -ErrorAction SilentlyContinue -Filter 'DriveType = 3' | Select-Object SystemName, DeviceID,
         @{n='FreeSpace';e={[int]($_.FreeSpace/1GB)}},
         @{n='Size';e={[int]($_.Size/1GB)}} | Out-File -FilePath C:\prathmesh\disk.txt -Append}

        