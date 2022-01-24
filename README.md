# a3510_dsdt_fix
Fixes DSDT for BIOS Revs 1.09, 1.10 and 1.12 which broke the battery symbol on Fujitsu Lifebook A3510


aml file needs to be copied to the /boot/ directory and renamed to dsdt.aml

01_acpi needs be copied to /etc/grub.d/

Follow it with update-grub and reboot. Batter symbol so appear in the task bar.
