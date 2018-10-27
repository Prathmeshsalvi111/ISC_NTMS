Get-Command *provider*
Get-PSProvider
Get-PSDrive
Get-Variable
Get-Date | Get-Member
Get-Date
$myvar = Get-Date
$myvar | Get-Member
cls
Write-Host " Hello NTMS"
Get-Help Write-Host -Examples
Write-Host " Hello NTMS" -ForegroundColor Red -BackgroundColor Green
Write-Host | Get-Member
$myhost = Write-Host " Hello NTMS" -ForegroundColor Red -BackgroundColor Green
$myhost.GetType()
Write-Output "hello NTMS" | gm
Read-Host
$myname = Read-Host
Write-Host "your name is $myname"
$myname.GetType()
$fistname = Read-Host "First Name"
$Lastname = Read-host "Last Name"
Write-Output " Your full name is $fistname $lastname"
$firstnumber = Read-host "first number"
$secoundnumber = Read-Host "secound number"
$total = $firstnumber+$secoundnumber
Write-Host = your addition is $total
[int]$firstnumber = Read-host "first number"
[int]$secoundnumber = Read-Host "secound number"
$total = $firstnumber+$secoundnumber
Write-Host "your addition is $total"
[int]$firstnumber = Read-host "first number"
[int]$secoundnumber = Read-Host "secound number"
Write-Host "your addition is $($firstnumber+$secoundnumber)"
[int]$firstnumber = Read-host "first number"
[int]$secoundnumber = Read-Host "secound number"
Write-Host "your addition is"($firstnumber+$secoundnumber)
$array = @(1,2,3,"Vinayak","Prathmesh")
$array
$array1 = (1,2,3,"Vinayak","Prathmesh")
$array | gm
$array.Count
$array.Contains(5)
$array[4]
$array[-1]
$array+=3
$array | gm
$array.Remove([int]2)
$hashtable = @{Fname="vinayak";Lname="Shinde"}
$hashtable | gm
$hashtable["fname"]
$hashtable.Keys
Get-Help about_Arrays -Examples
Get-Help about_Hash_Tables -Examples
Get-Service | Stop-Process
Get-Help Stop-Process -ShowWindow
Get-Process | gm
Get-Service | Where-Object {$_.name -eq bits }
Get-Process | Where-Object {$_.Id -gt 5000 }
Get-Process | Where-Object {$_.ws -gt 100}
Get-Process | Where-Object {$_.ws -gt 0.1gb}
Get-Item C:\Windows | Get-Member | Out-File C:\prathmesh\directory.txt
Get-Item C:\prathmesh\directory.txt | Get-Member
Get-ChildItem C:\Windows | Where-Object {$_.PSIsContainer -eq $true}
Get-ChildItem C:\Windows | Where-Object {$_.PSIsContainer -eq $false}
Get-ChildItem | select Length, LastWriteTime | Get-Process
Get-ChildItem C:\Windows | Select mode, @{n="id";e={$_.length}}
Get-ChildItem C:\Windows | Select mode, @{n="id";e={$_.length}} | Get-Process
Get-Service | select displayname | Get-Service
Get-Service | select displayname | Out-File C:\prathmesh\display.txt
Invoke-Item C:\prathmesh\display.txt
Get-Service -DisplayName (Get-Content C:\prathmesh\display.txt)
Get-Content C:\prathmesh\display.txt
Get-Service -DisplayName (Get-Content C:\prathmesh\display.txt)
Get-Content C:\prathmesh\display.txt | gm
Get-Service -DisplayName (Get-Content "C:\prathmesh\display.txt")