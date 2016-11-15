$domain = "domain.local"
$password = "Password" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\useraccount" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
$ou = "Workstations"
Add-Computer -DomainName $domain -Credential $credential

