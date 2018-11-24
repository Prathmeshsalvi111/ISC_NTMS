
# task 3

#5) 

for($i=1;$i -lt 25;$i +=2 )
    {if ($i-1)
        {write-host "the number is odd "}
       write-host "the number is even" }



#task 4

#1)
Get-EventLog -LogName Application -After 12am
#2)
$c = Get-ChildItem C:\Windows\Temp
$c.Count
#3)
$a = Get-Content C:\Windows\System32\*.dll* | Unblock-File
 

 #4)
 
for($a=0;$a -lt 10;$a ++)
    {New-Item -ItemType file -path C:\prathmesh\$a.log }
Get-ChildItem -Path C:\prathmesh\*.log | Rename-Item -NewName {$_.Name -replace "\.*log", ".txt"}

#below command not working any way 
$files1 = Get-ChildItem C:\prathmesh\
foreach($file in $files1)
    {Rename-Item -Path "C:\prathmesh\$file1" -NewName "$file.txt"}