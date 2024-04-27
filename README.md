# XPS15TouchpadAndUSBFix
Contains a simple powershell script, which fixes XPS15 touchpad and USB issues, by disabling power managment on them.

In order for the fix to properly work, schedule the powershell script to run on startup with elevated permissions. Otherwise, the fix will stop working after each reboot.

In order to have it run on startup, create a task using task scheduler, have "Run with highest privileges" enabled. Disable any restrictions on if to run the task in the "Conditions" tab.
Create a trigger with the option "At startup", turn off everything except for "Enabled". Create Action to run powershell, with arguments "-ExecutionPolicy Bypass -File 'Location of powershell script' "
Save the task.
