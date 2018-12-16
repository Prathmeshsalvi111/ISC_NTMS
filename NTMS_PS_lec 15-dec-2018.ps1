Get-Help about_regular_expressions -ShowWindow
"192.168.1.25" -match '^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4])$'
"a.a.a." -match '^([a]\.){3}$'

# Defining a class
Class Name
{ [string]$firstname
  [string]$lastname
  [string]getfullname()
  {
     Return "$($($this.firstname).substring(0,1))"+"$($this.lastname)"
     }
     }
$object = New-Object -TypeName Name
$object.firstname= "Vinayak"
$object.lastname= "Shinde"
$object.getfullname()
$env:PSModulePath
Find-Module
Get-Module
Get-Module -ListAvailable
Find-Module -Name *User*
Install-Module -Name Get-ActiveUser
Import-Module -Name Get-ActiveUser
Get-Help Get-ActiveUser -ShowWindow
Get-Command -Module Get-ActiveUser
Save-Module -Name WMIEvent -Path 'C:\New folder'
Import-Module -Name WmiEvent
$profile
get-help about_scope -ShowWindow
New-Variable -Name MYVariable -Value 10 -Scope Global
$Global:Test= "Mysession Test Value"
Clear-Variable -name $test
$mytest= "This is my Value"
Start-Job -ScriptBlock {Get-Service}
Get-Job -Name Job3 | Fl *
Receive-Job -Name Job4 -Keep
Get-Service -Name *WinRM*
Start-Job -Name Job1 -ScriptBlock {Get-Service -Name *BITS* ; Start-Sleep 20}
Start-Job -Name Job2 -ScriptBlock {Get-Service -name *WINrm* ; Start-Sleep 60}
Get-Job -Name "Job2" | Wait-Job
$job1Var = Get-Job -Name "Job1" | Receive-Job
$Job2Var = Get-Job -Name "Job2" | Receive-Job
Start-Job -Name Job8 -ScriptBlock {Get-Servi}
$NewJOb = Get-Job -Name Job8
$NewJOb.ChildJobs[0]
$NewJOb.ChildJobs[0].JobStateInfo.Reason