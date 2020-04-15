$IP = "192.168.2.1"
$Timeout = 500 
$FailureThreshold = 10
$Ping = New-Object System.Net.NetworkInformation.Ping

do {
    $Result = $Ping.Send($IP,$Timeout)
    if ($Result.Status -eq "Success") {
        Write-Output "Working as intended."
        pause 2
    }
    else {
        Write-Output "Ping Failed!"
        $Failures += 1
    }
} until ($Failures -ge $FailureThreshold)
Write-Output "I will check the HTTP"

Test-NetConnection -CommonTCPPort HTTP -ComputerName $IP
  if ($Result.Status -eq "False") {
        Write-Output "Working as intended."
        pause 2
        }
Test-NetConnection -Port 443 -ComputerName $IP
Write-Output "$IP."

Test-NetConnection -Port 22  -ComputerName $IP
Write-Output "$IP."