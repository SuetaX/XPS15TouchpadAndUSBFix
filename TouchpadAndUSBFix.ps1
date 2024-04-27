#Sets all USB controllers power managment to off
$USBDevices = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI |
    Where-Object InstanceName -Like USB*
    
foreach ($usbd in $USBDevices) {
    $usbd.Enable = $false
    Set-CimInstance -InputObject $usbd
}
Write-Output $USBDevices

#Sets all I2C host controllers 43E8 and 43E9 power managment to off, to mitigate touchpad issues
$I2CDevices = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI |
    Where-Object InstanceName -Match "43E8|43E9"

foreach ($device in $I2CDevices) {
    $device.Enable = $false
    Set-CimInstance -InputObject $device
}
Write-Output $I2CDevices
