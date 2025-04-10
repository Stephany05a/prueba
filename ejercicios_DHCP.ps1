
Add-DhcpServerv4Scope -Name "RedInterna" -StartRange 192.168.100.10 -EndRange 192.168.100.100 -SubnetMask 255.255.255.0

Set-DhcpServerv4OptionValue -ScopeId 192.168.100.0 -Router 192.168.100.1


Set-DhcpServerv4OptionValue -ScopeId 192.168.100.0 -DnsServer 8.8.8.8

Set-DhcpServerv4Scope -ScopeId 192.168.100.0 -State Active

Get-DhcpServerv4Scope

Remove-DhcpServerv4Scope -ScopeId [192.168.10.3] -Force

Get-DhcpServerv4Lease -ScopeId 192.168.100.0

Add-DhcpServerv4Reservation -ScopeId 192.168.100.0 -IPAddress 192.168.100.50 -ClientId "00-11-22-33-44-55" -Description "Reserva RedInterna"

Set-DhcpServerv4Scope -ScopeId 192.168.100.0 -State Inactive

Export-DhcpServer -ComputerName localhost -Leases -File "C:\Backup\dhcp_config.xml" -Force
