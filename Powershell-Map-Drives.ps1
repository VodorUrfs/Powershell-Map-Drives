$drive=New-Object -Com WScript.Network
$drive.MapNetworkDrive('Z:', "\\fileserver\users\$env:username",$true)
$sh=New-Object -com Shell.Application
$sh.NameSpace('Z:').Self.Name = $env:username

$drive=New-Object -Com WScript.Network
$drive.MapNetworkDrive('Y:', "\\nulllocation\bacon",$true)
$sh=New-Object -com Shell.Application
$sh.NameSpace('Y:').Self.Name = 'bacon'
