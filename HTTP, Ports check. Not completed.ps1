$IP = "192.168.2.1"
$Timeout = 500 
$FailureThreshold = 2
$Ping = New-Object System.Net.NetworkInformation.Ping

do {
    $Result = $Ping.Send($IP,$Timeout)
    if ($Result.Status -eq "Success") {
        Write-Output "Ping Working as intended $IP."
        pause 2
    }
    else {
        Write-Output "Ping Failed $IP !"
        $Failures += 1
    }
} until ($Failures -ge $FailureThreshold)
Write-Output "I will check the HTTP"

{
$HTTP = Test-NetConnection -Port 80 -ComputerName $IP
  if ($HTTP.tcpTestSucceeded -eq $true) 
  
        "HHTP Port of $IP is Open"
        pause 2
        }
        else
        
        
{
$HTTPS = Test-NetConnection -Port 443 -ComputerName $IP
if ($HTTPS.tcpTestSucceeded -eq $true) 

  
        "HHTPS Port of $IP is Open"
        pause 2
        }
        else
        {
$SSH = Test-NetConnection -Port 22  -ComputerName $IP
if ($SSH.tcpTestSucceeded -eq $true) 

  
        "SSH Port of $IP is Open"
        pause 2
        }
        else
        {
        "Finish"
        }
        Out-File -FilePath C:\Powershell test\OUTPUT.txt
