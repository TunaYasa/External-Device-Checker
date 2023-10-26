# Define an action to trigger when a USB device is connected

Register-WmiEvent -Query "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_PnPEntity' AND TargetInstance.Description LIKE 'USB%'" -Action {

    $usbDevice = [System.Management.ManagementBaseObject]$Event.SourceEventArgs.NewEvent.TargetInstance

    if ($usbDevice.Description -match "USB") {

        Write-Host "USB cihazi baglandi: $($usbDevice.Description)"

        # You can add the operations you want to do when USB is connected

        Start-Process -FilePath "C:\path_trial\lghub_installer.exe"
    }

 

}