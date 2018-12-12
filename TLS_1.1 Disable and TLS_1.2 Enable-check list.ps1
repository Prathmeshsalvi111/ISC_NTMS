#region Disable SSL 1.0        
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\ -ItemType Directory -Name "SSL-1.0"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0 -ItemType Directory -Name "Server"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0 -ItemType Directory -Name "Client"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0\Server -Name "Enable" -Value 0 -PropertyType "DWord"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0\Client -Name "DisabledByDefault" -Value 1 -PropertyType "DWord"
#endregion

#region Disable SSL 2.0 
Rename-Item -Path  'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0' -NewName "SSL-2.0"      
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-2.0 -ItemType Directory -Name "Server"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-2.0\Server -Name "Enable" -Value 0 -PropertyType "DWord"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-2.0\Client -Name "DisabledByDefault" -Value 1 -PropertyType "DWord"
#endregion

#region Disable SSL 3.0        
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\ -ItemType Directory -Name "SSL-3.0"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0 -ItemType Directory -Name "Server"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0 -ItemType Directory -Name "Client"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0\Server -Name "Enable" -Value 0 -PropertyType "DWord"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0\Client -Name "DisabledByDefault" -Value 1 -PropertyType "DWord"
#endregion

#region Disable TLS-1.1        
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\ -ItemType Directory -Name "TLS-1.1"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1 -ItemType Directory -Name "Server"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1 -ItemType Directory -Name "Client"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1\Server -Name "Enable" -Value 0 -PropertyType "DWord"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1\Client -Name "DisabledByDefault" -Value 1 -PropertyType "DWord"
#endregion

#region Enable TLS-1.2
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\ -ItemType Directory -Name "TLS-1.2"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2 -ItemType Directory -Name "Server"
New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2 -ItemType Directory -Name "Client"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2\Server -Name "Enable" -Value 1 -PropertyType "DWord"
New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2\Client -Name "Enable" -Value 1 -PropertyType "DWord"
#endregion
####################################################################################################################################################################
#region Check SSL 1.0 status on client and server
#check SSL 1.0 client
$SSL1c = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0\Client\
foreach($SSL1c1 in $SSL1c)
        {if ($SSL1c1.DisabledByDefault -eq 1 )
                {write-host " SSL 1.0 client is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 1.0 client is not disable" -ForegroundColor DarkRed}

        }

#check SSL 1.0 Server
$SSL1s = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-1.0\Server\
foreach($SSL1s1 in $SSL1s)
        {if ($SSL1s1.Enable -eq 0 )
                {write-host " SSL 1.0 Server is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 1.0 Server is not disable" -ForegroundColor DarkRed }

        }
#endregion
####################################################################################################################################################################

#region Check SSL 2.0 status on client and server
#check SSL 2.0 client
$SSL2c = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-2.0\Client\
foreach($SSL2c1 in $SSL2c)
        {if ($SSL2c1.DisabledByDefault -eq 1 )
                {write-host " SSL 2.0 client is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 2.0 client is not disable" -ForegroundColor DarkRed}

        }

#check SSL 2.0 Server
$SSL2s = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-2.0\Server\
foreach($SSL2s1 in $SSL2s)
        {if ($SSL2s1.Enable -eq 0 )
                {write-host " SSL 2.0 Server is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 2.0 Server is not disable" -ForegroundColor DarkRed }

        }
#endregion

####################################################################################################################################################################

#region Check SSL 3.0 status on client and server
#check SSL 3.0 client
$SSL3c = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0\Client\
foreach($SSL3c1 in $SSL3c)
        {if ($SSL3c1.DisabledByDefault -eq 1 )
                {write-host " SSL 3.0 client is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 3.0 client is not disable" -ForegroundColor DarkRed}

        }

#check SSL 3.0 Server
$SSL3s = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL-3.0\Server\
foreach($SSL3s1 in $SSL3s)
        {if ($SSL3s1.Enable -eq 0 )
                {write-host " SSL 3.0 Server is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " SSL 3.0 Server is not disable" -ForegroundColor DarkRed }

        }
#endregion
####################################################################################################################################################################
#region Check TLS-1.1 status on client and server
#check TLS-1.1 client
$tlsc = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1\Client\
foreach($tlsc1 in $tlsc)
        {if ($tlsc1.DisabledByDefault -eq 1 )
                {write-host " TLS 1.1 client is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " TLS 1.1 client is not disable" -ForegroundColor DarkRed}

        }

#check TLS-1.1 Server
$tlss = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.1\Server\
foreach($tlss1 in $tlss)
        {if ($tlss1.Enable -eq 0 )
                {write-host " TLS 1.1 Server is disable " -ForegroundColor DarkGreen }
         else 
                        {write-host " TLS 1.1 Server is not disable" -ForegroundColor DarkRed }

        }
#endregion
####################################################################################################################################################################

#region Check TLS-1.2 status on client and server
#check TLS-1.2 client
$tlsc = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2\Client\

foreach($tlsc2 in $tlsc)
        {if ($tlsc2.enable -eq 1 )
                {write-host " TLS 1.2 client is Enabled" -ForegroundColor DarkGreen }
         else 
                        {write-host " TLS 1.2 client is not Enabled" -ForegroundColor Red}

        }


#check TLS-1.2 Server

$tlss = Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS-1.2\Server\
foreach($tlss2 in $tlss)
        {if ($tlss2.Enable -eq 1 )
                {write-host " TLS 1.2 server is Enabled" -ForegroundColor DarkGreen}
         else 
                        {write-host " TLS 1.2 server is Enabled" -ForegroundColor DarkRed}

        }
#endregion

###############################################################################################################################################################################

