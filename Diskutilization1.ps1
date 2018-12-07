#disk utilization on servers
$diskinfo = Import-Csv -Path C:\Users\citrixadmin\Desktop\Book1.csv
$diskinfo.hostname
foreach( $diskinfos in $diskinfo.hostname )
         {Get-WmiObject Win32_LogicalDisk -ComputerName $diskinfos -Filter 'DriveType = 3' | Select-Object SystemName, DeviceID,
         @{n='FreeSpace';e={[int]($_.FreeSpace/1GB)}},
         @{n='Size';e={[int]($_.Size/1GB)}} | Out-File -FilePath C:\prathmesh\disk.txt -Append
         Get-Date | Out-File -FilePath C:\prathmesh\disk.txt -Append }
         
    
       


Get-PSDrive | Where-Object{$_.free -gt 1} | ForEach-Object{$count=0;write-host "";}`
{ $_.name + ": used: " + "{0:N2}" -f ($_.used/1gb) + " Free :" + "{0:N2}" -f ($_.free/1gb) + " Total: " +"{0:N2}" -f(($_.used/1gb)+($_.Free/1gb)); $count = $count + $_.free;}`
{write-host ""; write-host "total free Space" ("{0:N2}" -f ($count/1gb)) -BackgroundColor Magenta }

