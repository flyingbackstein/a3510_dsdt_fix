# a3510_dsdt_fix
Fixes DSDT for BIOS Revs 1.09, 1.10 and 1.12 which broke the battery symbol on Fujitsu Lifebook A3510

Extract to Desktop, execute dsdt_fix.sh (currently only in German) and select the BIOS Rev the script read out
Reboot. 
Done

For other languages:
Use 'dmidecode | grep "BIOS Revision"' to check which BIOS you currently have
The respective .aml file needs to be copied to the /boot/ directory and renamed to dsdt.aml
01_acpi needs be copied to /etc/grub.d/

Follow it up with update-grub and reboot. Battery symbol should appear in the task bar.
