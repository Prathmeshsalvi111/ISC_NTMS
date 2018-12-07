
#region SMB 0.1 disable
###################
#SMB 0.1 disable #
##################
New-Item -ItemType Directory HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\ -Name "SMB1"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\SMB1\ -Name "SMB1" -Value 0 -PropertyType DWORD -force
$smb = Get-ItemProperty  HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\SMB1\
foreach ($smb1 in $smb)
        {switch ($smb1.smb1)
            {0 { write-host "Smb1 is disable on server" }

            default {write-host "Smb1 is not disable on Server"}}
         }
 #endregion        
        
########################################################################################################################################################################################################
#region RDP PORT change
####################
#RDP port change ##
###################
set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\' -Name portnumber -Value 4000 -Force
#endregion

########################################################################################################################################################################################################
#region NTLM VERSION 0.2
####################
#NTLM VERSION 0.2 ##
###################


$disk = Get-WmiObject -class win32_logicaldisk  | ?{$_.free -gt 1}
Get-WmiObject -class win32_logicaldisk
$disk.freespace | Where-Object {$_.free -gt 1}  Select-Object 
$disk = Get-WmiObject -class win32_logicaldisk -Filter 'DriveType = 3' | Select-Object DeviceID, FreeSpace, Size 
 ForEach-Object{($disk.freespace * $disk.size)/100}

Get-PSDrive | Where-Object {$_.free -gt 1} | Select-Object root, used, free
Get-PSDrive | Select-Object root, used, free, provider