# Define an action to trigger when a USB device is connected
Register-WmiEvent -Query "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_PnPEntity' AND TargetInstance.Description LIKE 'USB%'" -Action {
    # USB device variable
    $usbDevice = [System.Management.ManagementBaseObject]$Event.SourceEventArgs.NewEvent.TargetInstance

    # Make a condition for if connected external device is USB
    if ($usbDevice.Description -match "USB") {
        # Get output when USB is inserted
        Write-Host "USB device inserted: $($usbDevice.Description)"

        # You can add the operations you want to do when USB is connected
        Start-Process -FilePath "FILE PATH SHOULD BE ADDED HERE TO RUN FILE OR .EXE"
    }
}
