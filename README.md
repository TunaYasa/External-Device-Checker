# External-Device-Checker
## General Idea of Code
*The project is about external device should be detected at the moment when device is inserted to laptop, in this code external device selected as USB. When USB is connected an application or an “exe” file exists, and the task is to run that specific file so that we can get rid of time consumption and search for file location time. The task can be a wide range of activities, and in our particular scenario, I have chosen for the execution of a file. I have used PowerShell language to succeed in this issue.*

- In line 2 of the code, I have defined the place where the code should look which is “WmiEvent”. After that I used a query to get desired case by filtering. “Win32_PnPEntity” WMI class represents properties of plug and play device. Also, most importantly, I have filtered the devices for just USB devices with the code of 
 “TargetInstance.Description LIKE 'USB%'”.
- In line 4, a variable of USB device is defined as “$usbDevice” to check in an if condition when an external device is inserted.
- In line 7, an if clause searches for an external device which is a USB.
- In line 9, I have used a “Write-Host” clause to get output for observing a sign when a USB is inserted.
- In line 12, I have indicated a certain file path to execute when “if” condition is met. “FILE PATH SHOULD BE ADDED HERE TO RUN FILE OR .EXE” desired file path should be written here.
