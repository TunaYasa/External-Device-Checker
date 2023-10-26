# Define an action to trigger when a USB device is connected

Register-WmiEvent -Query "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_PnPEntity' AND TargetInstance.Description LIKE 'USB%'" -Action {

    $usbDevice = [System.Management.ManagementBaseObject]$Event.SourceEventArgs.NewEvent.TargetInstance

    if ($usbDevice.Description -match "USB") {

        Write-Host "USB device inserted: $($usbDevice.Description)"

        # You can add the operations you want to do when USB is connected

        Start-Process -FilePath "FILE PATH SHOULD BE ADDED HERE TO RUN FILE OR .EXE"
    }
}
